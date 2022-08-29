# web_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Notes
## 1. Getx
* se crea Se crea una carpeta “Controllers” para definir los controladores que tendrán

* Se crea un archivo “.dart” controller con extensión de getx.

* Se crea la variable que se desea modificar en ejecucion y se le añade ".obs"
```dart
var counter = 0.obs;

```
y posterior a eso se crea su metodo en donde se especifica las acciones que hará

```dart
void increment() {
    counter++;
  }

```

en el widget donde se vaya a usar se debe definir un controlador de instancia get:
```dart

final CounterController counterController = Get.put(CounterController());

```
luego se coloca el controlador especificando la instancia y lo que queremos de la instancia.

```dart
Text("Clicks: ${counterController.counter.value}"),
```


<!-- 
```dart
int helloworld = 0;
``` -->

