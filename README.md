#API-Gateway

Welcome to the API Gateway aplication. This app works as a gateway between users and internal APIs for manage cars and billets.

## Running locally

### Dependencies

To run application locally, you need to install those dependencies, to allow then to get up locally:

`Docker`: https://docs.docker.com/engine/install/

`Docker composer`: https://docs.docker.com/compose/install/

`JDK 8`: https://www.oracle.com/br/java/technologies/javase/javase-jdk8-downloads.html

`Apache Maven`: http://maven.apache.org/install.html

### Other APIs

This API Gateway reachs request for another APIs. So, to run it locally, you need to download the other application, witch this gateway will redirect to

For that:

`git clone https://github.com/guilhermesilvagoncalves/car-api.git`

`git clone https://github.com/guilhermesilvagoncalves/billetAPI.git`

Follow each README.md instructions to get then up. Basically, they work with docker-compose engine:

`mvn install`

`docker-compose build`

`docker-compose up -d`

They should be running on docker containers, using ports 8081 and 8082.


## To run this application

### Configuration for local environment

### Compile application

`./mvnw install`

### Building locally

`./mvnw springboot:run`

### Some requests tests

#### To create a new car:
`POST localhost:8080/cadastroAutomoveis`

Request body example:

`{
 	"brand": "Hyndai",
 	"model": "HB20",
 	"value": 60000
 }`
 
#### To get all cars on database:
 `GET localhost:8080/automoveis`

#### To generate a billet for a car:
 `POST localhost:8080/boleto`
 
Request body example:
`{
 	"carId": 1
 }` 
