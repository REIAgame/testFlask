from flask import Flask,render_template,request
app = Flask(__name__)
@app.route("/")
def main():
    return render_template("inxex.html")
@app.route("/",methods=["POST"])
def postShow():
    return "<h1>{}</h1>".format(request.form["shows"])
@app.route("/<name>", methods=["GET", "POST"])
def namepage(name):
    return render_template("name.html")

if __name__ =="__main__":
    app.run(host="0.0.0.0",port=3000)