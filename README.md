# pyspark-sandbox
Песочница pyspark + jupyter

### Как собрать и запустить

1. Скачать Dokerfile
2. Собрать контейнер `docker build . -t pyspark`
3. Запустить контейнер `docker run -d -p 8888:8888 pyspark`
4. Открыть в браузере [http://locahost:8888](http://localhost:8888)
5. Пример инициализации сессии:
```
In: spark = SparkSession.builder.getOrCreate()
In: df = spark.sparkContext.parallelize([1,2,3,4,5])
In: df = df.map(lambda x: x**2)
In: df.collect()
Out: [1, 4, 9, 16, 25]
```
