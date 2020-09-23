VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Cool textfadein"
   ClientHeight    =   3150
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3150
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   240
      TabIndex        =   2
      Text            =   "Text1"
      Top             =   840
      Width           =   1575
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   1800
      Top             =   1320
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Go"
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Fernando"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   360
      Width           =   2775
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()

Static i As Integer
Dim tmp As String * 20
Dim s As String
s = Text1.Text
If i < 1 Then i = 1
If Left(Label1.Caption, Len(s)) = s Then
Label1.Caption = s
i = 1
Timer1.Enabled = False
Exit Sub
End If
tmp = Label1.Caption
Mid(tmp, 1, i) = Right(s, i)
Label1.Caption = Trim(tmp)
i = i + 1
End Sub
