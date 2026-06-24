color: Color(0xFF1E1E1E),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.attach_file_rounded, color: Color(0xFF4CAF50)),
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "اكتب رسالة أو الصق الكود هنا...",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send_rounded, color: Color(0xFF4CAF50)),
                  onPressed: () {
                    _messageController.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // بناء فقاعة الشات النصية التقليدية
  static Widget _buildChatBubble(String text, bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isMe ? Color(0xFF2E7D32) : Color(0xFF262626),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: isMe ? Radius.circular(12) : Radius.circular(0),
            bottomRight: isMe ? Radius.circular(0) : Radius.circular(12),
          ),
        ),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 14)),
      ),
    );
  }

  // بناء فقاعة مخصصة لعرض الكروت والأكواد بشكل فخم وبارز
  static Widget _buildCodeBubble(String code, bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFF1E1E1E),
          border: Border.all(color: Color(0xFF4CAF50), width: 1.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.vpn_key_rounded, color: Color(0xFF4CAF50)),
            SizedBox(width: 12),
            SelectableText(
              code, // نص قابل للنسخ بضغطة زر من قبل المشتري
              style: TextStyle(color: Color(0xFF4CAF50), fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'Courier'),
            ),
          ],
        ),
      ),
    );
  }
}
