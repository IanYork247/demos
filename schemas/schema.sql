-- Create users table
create table users (
    id int primary key,
    first_name varchar(80),
    last_name varchar(80),
    email varchar(255),
    password varchar(255),
    phone varchar(20),
    is_active boolean
);

-- Create products table
create table products (
    id int primary key,
    name varchar(100),
    description text,
    price decimal(10, 2),
    stock_quantity int
);

-- Create orders table
create table orders (
    id int primary key,
    user_id int,
    order_date datetime,
    status varchar(50),
    total_amount decimal(10, 2),
    foreign key (user_id) references users (id)
);

-- Create order_items table
create table order_items (
    id int primary key,
    order_id int,
    product_id int,
    quantity int,
    price decimal(10, 2),
    foreign key (order_id) references orders (id),
    foreign key (product_id) references products (id)
);
