import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

  Window {
	width: 640
	height: 420
	visible : true
	ColumnLayout {
	  anchors.fill:parent
	  RowLayout {
		id:row_rect
		Layout.minimumWidth: 640
		Layout.minimumHeight:280
		Rectangle{
		  anchors.fill:row_rect
		  anchors.leftMargin:10
		  anchors.rightMargin:10
		  visible:true
		  color:"black"
	   }
	 }
		 RowLayout {
		   Layout.minimumWidth: 640
		   Layout.minimumHeight:70
		   anchors.left:parent.left
		   anchors.leftMargin:100
		   spacing:40
		   Repeater {
			 id:repeater
			 model:["▶️","⏸️","⏹","⏪️","⏩️"]
			 Button {
			   id: play
			   implicitWidth: 38
			   implicitHeight: 38
			   Text {
				 anchors.centerIn:play
				 text: modelData
				 font.pointSize:24
				 color:"white"
			   }
				 background: Rectangle {
						   color:"blue"
							}
			}
		 }
	   }
				RowLayout{
				  Layout.minimumWidth: 640
				  Layout.minimumHeight:70
				  ProgressBar {
					anchors.horizontalCenter:parent.horizontalCenter
					background: Rectangle  {
								   radius:  5
								   color: "lightgreen"
								   border.color: "gray"
								   border.width:  1
								   implicitWidth:  600
								   implicitHeight:  24
							   }
				 }
			   }
	 }
	}