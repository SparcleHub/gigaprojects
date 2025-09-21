#!/bin/bash

# ==================== КОНФИГУРАЦИЯ ====================
LOG_DIR="/var/log/system_monitor"
LOG_FILE="$LOG_DIR/system_monitor.log"
ERROR_LOG_FILE="$LOG_DIR/system_monitor_error.log"
RETENTION_DAYS=3
MONITOR_INTERVAL=60

# ==================== ЭТАП 4: ОТЛАДКА ====================
setup_debug() {
    if [[ "$1" == "-x" ]] || [[ "$DEBUG" == "true" ]]; then
        set -x
        echo "$(date): Debug mode enabled" | tee -a "$LOG_FILE"
    fi
}

# ==================== ЭТАП 3: СИГНАЛЫ И ОБРАБОТКА ОШИБОК ====================
setup_signal_handlers() {
    trap 'cleanup SIGINT' SIGINT
    trap 'cleanup SIGTERM' SIGTERM
    trap 'handle_error' ERR
}

cleanup() {
    local signal=$1
    echo "$(date): Received signal $signal, cleaning up and exiting..." | tee -a "$LOG_FILE"
    exit 0
}

handle_error() {
    local exit_code=$?
    local command="$BASH_COMMAND"
    echo "$(date): Error in command: $command (exit code: $exit_code)" >> "$ERROR_LOG_FILE"
    return $exit_code
}

# ==================== ЭТАП 2: УПРАВЛЕНИЕ ЛОГАМИ ====================
create_log_dir() {
    if [ ! -d "$LOG_DIR" ]; then
        sudo mkdir -p "$LOG_DIR" 2>> "$ERROR_LOG_FILE"
        sudo chown $USER:$USER "$LOG_DIR" 2>> "$ERROR_LOG_FILE"
        echo "$(date): Created log directory: $LOG_DIR" | tee -a "$LOG_FILE"
    fi
}

rotate_logs() {
    echo "$(date): Starting log rotation..." | tee -a "$LOG_FILE"
    
    # Удаляем логи старше RETENTION_DAYS дней
    find "$LOG_DIR" -name "system_monitor*.log" -mtime +$RETENTION_DAYS -delete 2>> "$ERROR_LOG_FILE"
    find "$LOG_DIR" -name "system_monitor_error*.log" -mtime +$RETENTION_DAYS -delete 2>> "$ERROR_LOG_FILE"
    
    # Архивируем текущие логи если они больше 1MB
    if [ -f "$LOG_FILE" ] && [ $(stat -c%s "$LOG_FILE" 2>/dev/null || echo 0) -gt 1000000 ]; then
        mv "$LOG_FILE" "${LOG_FILE}.$(date +%Y%m%d_%H%M%S)" 2>> "$ERROR_LOG_FILE"
    fi
    
    if [ -f "$ERROR_LOG_FILE" ] && [ $(stat -c%s "$ERROR_LOG_FILE" 2>/dev/null || echo 0) -gt 1000000 ]; then
        mv "$ERROR_LOG_FILE" "${ERROR_LOG_FILE}.$(date +%Y%m%d_%H%M%S)" 2>> "$ERROR_LOG_FILE"
    fi
}

# ==================== ЭТАП 1: МОНИТОРИНГ РЕСУРСОВ ====================
monitor_resources() {
    local timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    
    {
        echo "=== SYSTEM MONITORING REPORT - $timestamp ==="
        
        # Мониторинг CPU
        echo "CPU Usage:"
        top -bn1 | head -3 | tail -1 2>/dev/null || echo "Error getting CPU info"
        
        # Мониторинг памяти
        echo -e "\nMemory Usage:"
        free -h 2>/dev/null || echo "Error getting memory info"
        
        # Мониторинг дискового пространства
        echo -e "\nDisk Usage:"
        df -h / 2>/dev/null || echo "Error getting disk info"
        
        # Дополнительная информация о дисках
        echo -e "\nDetailed Disk Info:"
        df -h 2>/dev/null | grep -v tmpfs || echo "Error getting detailed disk info"
        
        # Мониторинг нагрузки системы
        echo -e "\nSystem Load:"
        uptime 2>/dev/null || echo "Error getting uptime"
        
        echo -e "=== END OF REPORT ===\n"
    } >> "$LOG_FILE" 2>> "$ERROR_LOG_FILE"
}

# ==================== ОСНОВНАЯ ФУНКЦИЯ ====================
main() {
    setup_debug "$1"
    setup_signal_handlers
    create_log_dir
    rotate_logs
    
    echo "$(date): Starting system monitoring..." | tee -a "$LOG_FILE"
    
    while true; do
        monitor_resources
        sleep $MONITOR_INTERVAL
        rotate_logs
    done
}

# Запуск скрипта
main "$@"
