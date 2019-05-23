# maven-repo

Salomão Santos Maven Repository

## Uso de dependências do repositório ARiDa no seu projeto

A seguir um exemplo de uso da dependência *qosdisc* do repositório Maven do Salomão Santos. 
Basta configurar a API como dependência do seu projeto no arquivo pom.xml:

```xml
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  ...
  <!-- In Project repository -->
  <repositories>
    <repository>
      <id>maven-repo</id>
      <url>http://salomaosilvasantos.github.io/maven-repo/</url>
    </repository>
  </repositories>
  ...
  <dependencies>
    ...
    <dependency>
      <groupId>ch.epfl.qosdisc</groupId>
      <artifactId>qosdisc</artifactId>
      <version>1.0</version>
    </dependency>
    ...
  </dependencies>
  ...
</project>
```
