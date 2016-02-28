import Network.Wreq
import Control.Lens
import Data.Aeson.Lens
import Data.Aeson
import qualified Data.ByteString.Char8 as C


-- REMEMBER to :set -XOverloadedStrings in ghci

main = do

	print "Enter your SendGrid username: "
	the_user <- getLine

	print "Enter your SendGrid password: "
	the_key <- getLine

	print "Enter the address you want to send the email to: "
	to_email <- getLine

	print "Enter the subject: "
	the_subject <- getLine

	print "Enter the text you want to send"
	supratext <- getLine

	print "Enter the address you want to send from: "
	from_email <- getLine

	let api_user = C.pack "api_user"
	let api_key = C.pack "api_key"
	let to = C.pack "to"    
	let subject = C.pack "subject"
	let text = C.pack "text"
	let from = C.pack "from"
	post "https://api.sendgrid.com/api/mail.send.json" [api_user := the_user, api_key  := the_key, to := to_email, subject := the_subject, text := supratext, from := from_email]
