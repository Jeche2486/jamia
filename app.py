from flask import*
import pymysql
app = Flask (__name__)

@app.route('/')
def homepage():
    # connect to db
    connection = pymysql.connect(host='localhost', user='root', password='', database='Jumia')
    sql = "select * from products where product_category = 'phones' "
    sql1 = "select * from products where product_category = 'Electronics' "
    sql2 = "select * from products where product_category = 'clothes' "
    sql3 = "select * from products where product_category = 'skincare' "
    # you need to have a cursor 
    # cursor -  is used to run / execute above SQL 
    cursor = connection.cursor()
    cursor1 = connection.cursor()
    cursor2 = connection.cursor()
    cursor3 = connection.cursor()


    # execute 
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    cursor3.execute(sql3)


    # fetch all phone rows 
    phones = cursor.fetchall()
    # fetch all electronics rows
    electronics= cursor1.fetchall()
    #fetch all clothes rows
    clothes= cursor2.fetchall()
    #fetch all skin care rows
    skincare= cursor3.fetchall()

    return render_template("index.html", phones = phones, electronics = electronics, clothes= clothes, skincare = skincare )

@app.route('/single/<product_id>')
def singleitem(product_id):
    #connection to db
    connection = pymysql.connect(host='localhost', user='root', password='', database='Jumia')
    # create sql query 
    sql = "select * from products where product_id = %s " 
    # create a cursor 
    cursor = connection.cursor()

    # execute
    cursor.execute(sql, product_id)

    # get the single product
    product = cursor.fetchone()



    return render_template("single.html" , product = product)

# upload products
@app.route("/upload", methods = ['POST' , 'GET'])
def Upload():
    if request.method == 'POST':
        # user can add the products 
        product_name = request.form['product_name']
        product_desc = request.form['product_desc']
        product_cost = request.form['product_cost']
        product_category = request.form['product_category']
        product_image_name = request.files['product_image_name']
        product_image_name.save('static/images/' + product_image_name.filename)


        #connection to db
        connection = pymysql.connect(host='localhost', user='root', password='', database='Jumia')

        # create a cursor 
        cursor = connection.cursor()

        sql = "insert into products (product_name, product_desc, product_cost, product_category, product_image_name) values (%s, %s, %s, %s, %s)"

        data = (product_name, product_desc , product_cost, product_category , product_image_name.filename )

        #execute
        cursor.execute(sql, data)

        #save changes
        connection.commit()


        return render_template('/upload.html', message = "Product added successfully")
    else:
     return render_template('/upload.html', error = "Please add a product")
    
#fashion route
#helps you to see all the fashions

@app.route('/fashion')
def Fashion():
    # connect to db
    connection = pymysql.connect(host='localhost', user='root', password='', database='Jumia')
    sql = "select * from products where product_category = 'dresses' "
    sql1 = "select * from products where product_category = 'handbags' "
    sql2 = "select * from products where product_category = 'caps' "
    sql3 = "select * from products where product_category = 'socks' "
    sql4 = "select * from products where product_category = 'belt' "
    # you need to have a cursor 
    # cursor -  is used to run / execute above SQL 
    cursor = connection.cursor()
    cursor1 = connection.cursor()
    cursor2 = connection.cursor()
    cursor3 = connection.cursor()
    cursor4 = connection.cursor()


    # execute 
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    cursor3.execute(sql3)
    cursor4.execute(sql4)


    # fetch all dresses rows 
    dresses = cursor.fetchall()
    # fetch all handbags rows
    handbags= cursor1.fetchall()
    #fetch all caps rows
    caps= cursor2.fetchall()
    #fetch all socks rows
    socks= cursor3.fetchall()
    #fetch all belt rows
    belt= cursor4.fetchall()
    return render_template("fashion.html" , dresses = dresses, handbags = handbags, caps = caps, socks = socks, belt = belt)

# a route to upload fashion
@app.route("/uploadfashion", methods = ['POST' , 'GET'])
def UploadFashion():
    if request.method == 'POST':
        # user can add the products 
        product_name = request.form['product_name']
        product_desc = request.form['product_desc']
        product_cost = request.form['product_cost']
        product_category = request.form['product_category']
        product_image_name = request.files['product_image_name']
        product_image_name.save('static/images/' + product_image_name.filename)


        #connection to db
        connection = pymysql.connect(host='localhost', user='root', password='', database='Jumia')

        # create a cursor 
        cursor = connection.cursor()

        sql = "insert into products (product_name, product_desc, product_cost, product_category, product_image_name) values (%s, %s, %s, %s, %s)"

        data = (product_name, product_desc , product_cost, product_category , product_image_name.filename )

        #execute
        cursor.execute(sql, data)

        #save changes
        connection.commit()


        return render_template('/uploadfashion.html', message = "Fashion added successfully")
    else:
     return render_template('/uploadfashion.html', error = "Please add a fashion")
    

    


@app.route('/about')
def About():
    return "this is about page "


@app.route('/register')
def Register ():
    return " this is register page "

@app.route('/login')
def Login():
    return "login page"

@app.route('/logout')
def Logout():
    return "logout page"

if __name__ == '__main__':
    app.run(debug=True,port= 3000)