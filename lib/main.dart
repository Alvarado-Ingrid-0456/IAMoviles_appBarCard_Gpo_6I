import 'package:flutter/material.dart';

void main() => runApp(const AppPapeleria());

class AppPapeleria extends StatelessWidget {
  const AppPapeleria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Papeleria Cometa',
      home: Trabajador(),
    );
  }
} // Fin clase AppPapeleria

class Trabajador extends StatelessWidget {
  const Trabajador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Papeleria Cometa', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.purple,
        actions: const [
          Icon(Icons.bedroom_child, color: Colors.white),
          Icon(Icons.flight, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      drawer: const Drawer(),
      body: Center(
        // Columna para contener la tarjeta
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                // Azul degradado fuerte
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF0D47A1), // Azul muy oscuro
                    Color(0xFF1565C0), // Azul fuerte
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Avatar con imagen de la red
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white24,
                    backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/Alvarado-Ingrid-0456/IAMoviles_appBarCard_Gpo_6I/refs/heads/main/alvarado.png', // Ejemplo: Pikachu o usa tu link
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Título en blanco
                  const Text(
                    'Ingrid Alvarado',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Subtítulo en blanco (con opacidad suave)
                  const Text(
                    'Gerente Atención al Cliente',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} // Fin clase Trabajador