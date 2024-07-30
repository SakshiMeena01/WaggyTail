import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'chatbot_model.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatbotScreen extends StatefulWidget {
  @override
  _ChatbotScreenState createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatbotModel> _messages = [];
  late final GenerativeModel _model;

  @override
  void initState() {
    super.initState();
    _model = GenerativeModel(
      model: 'gemini-pro', // Replace with your desired model
      apiKey:
      'AIzaSyAntNngAQ0q3BJ0d0pdaZXAdTWqvuHefXw', // Replace with your API key
    );
  }

  Future<void> _sendMessage() async {
    final text = _textController.text;
    if (text.isEmpty) return;

    setState(() {
      _messages.add(ChatbotModel(text: text, isUser: true));
    });

    _textController.clear();

    try {
      final response = await _model.generateContent(
        [Content.text(text)],
      );
      final responseText = response.text ?? 'No response received';

      setState(() {
        _messages.add(ChatbotModel(text: responseText, isUser: false));
      });
    } catch (error) {
      // Handle errors here, e.g., show an error message to the user
      print('Error generating content: $error');
      setState(() {
        _messages.add(ChatbotModel(text: 'An error occurred.', isUser: false));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Your Queries with AI',
        style: GoogleFonts.labrada(fontWeight: FontWeight.bold, fontSize: 16),),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return Align(
                  alignment: message.isUser
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      color: message.isUser ? Colors.greenAccent : Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(message.text),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'Type your message',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
