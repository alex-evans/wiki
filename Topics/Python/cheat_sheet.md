# Alex's Python Cheat Sheet

## Logger
Loguru
```python
from loguru import logger

logger.remove()
logger.add(sys.stdout, colorize=True, format='<green>{time:YYYY-MM-DD at HH:mm:ss}</green> <level>{message}</level>')
...
logger.info('Here is an example of using Loguru')
```

## Misc
```python
if __name__ == '__main__'
```