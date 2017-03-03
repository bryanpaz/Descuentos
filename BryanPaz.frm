VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Form1"
   ClientHeight    =   4515
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8445
   LinkTopic       =   "Form1"
   ScaleHeight     =   4515
   ScaleWidth      =   8445
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      BackColor       =   &H008080FF&
      Caption         =   "Borrar"
      BeginProperty Font 
         Name            =   "Century Gothic"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4440
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   2400
      Width           =   1935
   End
   Begin VB.TextBox cantidad 
      Alignment       =   2  'Center
      BackColor       =   &H0080FFFF&
      BeginProperty Font 
         Name            =   "Century Gothic"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Left            =   3480
      TabIndex        =   1
      Top             =   1200
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0080FF80&
      Caption         =   "Calcular"
      BeginProperty Font 
         Name            =   "Century Gothic"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   2400
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Ingrese Precio"
      BeginProperty Font 
         Name            =   "Century Gothic"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   360
      Left            =   960
      TabIndex        =   4
      Top             =   1320
      Width           =   2145
   End
   Begin VB.Label igual 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "- - - - -"
      BeginProperty Font 
         Name            =   "Century Gothic"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   1920
      TabIndex        =   2
      Top             =   3480
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
cantidad.Text = ""
End Sub

Private Sub Form_Load()
Dim dos As Integer
Dim cien As Integer
Dim cinco As Integer
Dim mil As Integer
End Sub
Private Sub Command1_Click()
dos = cantidad.Text * 2 / 100
cien = cantidad.Text * 10 / 100
cinco = cantidad.Text * 20 / 100
mil = cantidad.Text * 50 / 100

If cantidad.Text <= 100 Then
igual.Caption = (cantidad.Text - dos)
End If
If cantidad.Text >= 101 And cantidad.Text <= 500 Then
igual.Caption = (cantidad.Text - cien)
End If

If cantidad.Text >= 501 And cantidad.Text <= 1000 Then
igual.Caption = (cantidad.Text - cinco)
End If
If cantidad.Text >= 1001 Then
igual.Caption = (cantidad.Text - mil)
End If

End Sub
