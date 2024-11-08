Check the [official website](https://cs50.harvard.edu/sql/2024/) for the latest update and more materials on this lecture.

As lecture 5 material contains a huge database, please download it from the website.
- Lecture 5
```shell
wget https://cdn.cs50.net/sql/2023/x/lectures/5/src5.zip
unzip src5.zip
```

Some keyboard bindings which can be useful for executing the query. You can paste it in the `keybindings.json`.
```json
  // sqltools
  {
    "key": "cmd+r",
    "command": "sqltools.executeQueryFromFile",
    "when": "editorTextFocus && editorLangId == 'sql'"
  },
  {
    "key": "cmd+r",
    "command": "sqltools.executeQuery",
    "when": "editorTextFocus && editorLangId == 'sql' && editorHasSelection == true"
  },
  {
    "key": "cmd+shift+r",
    "command": "sqltools.executeCurrentQuery",
    "when": "editorTextFocus && editorLangId == 'sql'"
  },
  {
    "key": "shift+cmd+i",
    "command": "workbench.action.chat.open",
    "when": "chatPanelParticipantRegistered"
  },
  {
    "key": "ctrl+cmd+i",
    "command": "-workbench.action.chat.open",
    "when": "chatPanelParticipantRegistered"
  }
```