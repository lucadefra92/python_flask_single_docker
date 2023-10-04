from flask import Flask, render_template, request
import random

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    random_number = random.choice('0123456789')
    value = 0
    if request.method == 'POST':
        value = random_number

    return render_template('index.html', value=value)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int("5001"), debug=True)


@app.route('/test')
def test():
    return "Passed"
