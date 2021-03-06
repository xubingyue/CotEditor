(*
Copy After.applescript
Sample Script for CotEditor

Description:
Copy selected text just after the selection.

最前面のウィンドウの選択範囲の直後に、選択範囲をコピーするスクリプト。
Mac OS X 10.5+ で選択範囲の直前／直後へのドラッグ&ドロップができなくなったことへの対策として作成。

written by nakamuxu on 2008-01-05
modified by 1024jp on 2014-11-22
*)

--
tell application "CotEditor"
	if not (exists front document) then return
	
	tell front document
		set oldRange to range of selection as list
		set len to item 2 of oldRange
		if len > 0 then
			set copyStr to contents of selection
			set loc to item 1 of oldRange
			set range of selection to {loc + len, 0}
			set contents of selection to copyStr
		end if
	end tell
end tell
