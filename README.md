# Triviados

Triviados is a [Flutter](https://flutter.dev/) application which consists in a basic trivia game with multiple options, unique correct answer and a fixed number of questions of 10.

The app gets the info from the API of [Open Trivia Database](https://opentdb.com).

## Getting Started

The purpouse of this project is to have a practical example of the [Clean Arquitecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html), [TDD](https://en.wikipedia.org/wiki/Test-driven_development) and some patterns like [BLoC](https://www.didierboelens.com/2018/08/reactive-programming---streams---bloc).

This project was inspired by [ResoCoder Flutter TDD Clean Architecture Course](https://resocoder.com/category/tutorials/flutter/tdd-clean-architecture/).

If this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)


## Project Structure

This project uses the concept of [Clean Arquitecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html) which will devide the project into theses layers.

* Presentation
* Domain
* Data

<img src="https://blog.cleancoder.com/uncle-bob/images/2012-08-13-the-clean-architecture/CleanArchitecture.jpg" width="500" height="340">

The project uses TDD paradigm based on this [practical example](https://resocoder.com/2019/08/27/flutter-tdd-clean-architecture-course-1-explanation-project-structure/) applied to the particular use case of Bitcoin Prices

## Architecture Proposal

<img src="https://i0.wp.com/resocoder.com/wp-content/uploads/2019/08/Clean-Architecture-Flutter-Diagram.png?w=556&ssl=1" width="600" height="720">


## Dependy injection




## Preview

|         |         |
| ------------- |-------------|
| ![alt text](https://raw.githubusercontent.com/diegoalvis/triviados_flutter/master/screens/Screenshot_1578054435.png) | ![alt text](https://raw.githubusercontent.com/diegoalvis/triviados_flutter/master/screens/Screenshot_1578054449.png) |
|  ![alt text](https://raw.githubusercontent.com/diegoalvis/triviados_flutter/master/screens/Screenshot_1578054451.png) | ![alt text](https://raw.githubusercontent.com/diegoalvis/triviados_flutter/master/screens/Screenshot_1578054465.png) |

## Built using

* [dependencies_flutter](https://pub.dev/packages/dependencies_flutter)
* [flutter_bloc](https://pub.dev/packages/flutter_bloc)
* [bloc](https://pub.dev/packages/bloc)
* [dio](https://pub.dev/packages/dio)
* [http](https://pub.dev/packages/http)
* [data_connection_checker](https://pub.dev/packages/data_connection_checker)
* [shared_preferences](https://pub.dev/packages/shared_preferences)
* [json_annotation](https://pub.dev/packages/json_annotation)
* [build_runner](https://pub.dev/packages/build_runner)
* [json_serializable](https://pub.dev/packages/json_serializable)
* [bloc_test](https://pub.dev/packages/bloc_test)

## Running the tests

The following tests was written.

<img src="https://raw.githubusercontent.com/diegoalvis/triviados_flutter/master/screens/Screenshot%202020-01-03%20at%2013.29.14.png" width="700" height="330">

## Contributing

Pending
 
* Dynamic number of questions.
* Select trivia category.
* [Fix] Payload needs to be formatted to a standard UTF codification.

## Authors

* *Diego Alvis* - Software Engineer [LinkedIn profile](https://www.linkedin.com/in/diego-alvis-palencia-7823a5130/)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details