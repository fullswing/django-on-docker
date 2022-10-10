import multiprocessing

bind = "0.0.0.0:8000"

# reload = True
workers = multiprocessing.cpu_count() * 2 + 1
