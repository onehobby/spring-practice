create table spring_users (
	user_id varchar(20) primary key,
	user_name varchar(100) not null,
	user_password char(32) not null,
	user_email varchar(256) not null unique,
	user_point integer default 0,
	user_disabled char(1) default 'N',
	user_created_date date default current_date,
	user_updated_date date default current_date,
	user_deleted_date date
);

create table spring_point_reason_categories (
	reason_category_no integer primary key,
	reason_categroy_name varchar(100) not null
);

create table spring_user_point_histories (
	hist_no integer generated by default as identity primary key,
	user_id varchar(20) references spring_users (user_id),
	reason_category_no integer not null references spring_point_reason_categories (reason_category_no),
	hist_point integer not null,
	hist_created_date date default current_date
);

create table spring_board_categories (
	board_category_no integer primary key,
	board_category_name varchar(100) not null
);

create table spring_boards (
	board_no integer generated by default as identity primary key,
	board_title varchar(200) not null,
	user_id varchar(20) not null references spring_users (user_id),
	board_content clob not null,
	board_likes_cnt integer default 0,
	board_comment_cnt integer default 0,
	board_deleted char(1) default 'N',
	board_created_date date default current_date,
	board_updated_date date default current_date,
	board_deleted_date date,
	parent_board_no integer references spring_boards (board_no)
);

create table spring_board_attached_files (
	board_no integer not null references spring_boards (board_no),
	file_name varchar(200) not null
);

create table spring_board_like_users (
	board_no integer not null references spring_boards (board_no),
	user_id varchar(20) not null references spring_users (user_id),
	like_created_date date default current_date,
	primary key (board_no, user_id)
);

create table spring_board_comments (
	comment_no integer generated by default as identity primary key,
	comment_content varchar(1000) not null,
	board_no integer not null references spring_boards (board_no),
	user_id varchar(20) not null references spring_users (user_id),
	comment_likes_cnt integer default 0,
	comment_deleted char(1) default 'N',
	comment_created_date date default current_date,
	comment_updated_date date default current_date,
	comment_deleted_date date
);

create table spring_board_comment_like_users (
	comment_no integer not null references spring_board_comments (comment_no),
	user_id varchar(20) not null references spring_users (user_id),
	like_created_date date default current_date,
	primary key (comment_no, user_id)
);

create table spring_book_categories (
	book_category_no integer primary key,
	book_category_name varchar(100) not null,
	parent_book_category_no integer references spring_book_categories (book_category_no)
)

create table spring_books (
	book_no integer primary key,
	book_category_no integer references spring_book_categories (book_category_no), 
	book_title varchar(1000) not null,
	book_writer varchar(100) not null,
	book_publisher varchar(100) not null,
	book_cover_image_filename varchar(256),
	book_summary varchar(1000) not null,
	book_price integer,
	book_discount_price integer,
	book_stock integer default 100,
	book_review_cnt integer default 0,
	book_review_score double default 0,
	book_deleted char(1) default 'N',
	book_created_date date default current_date,
	book_updated_date date default current_date,
	book_deleted_date date
);

create table spring_book_reviews (
	review_no integer generated by default as identity primary key,
	review_content varchar(2000) not null,
	review_score integer default 0,
	book_no integer not null references spring_books (book_no),
	user_id varchar(20) not null references spring_users (user_id),
	review_deleted char(1) default 'N',
	review_created_date date default current_date,
	review_updated_date date default current_date,
	review_deleted_date date
);

create table spring_book_cart_items (
	cart_item_no integer generated by default as identity primary key,
	book_no integer references spring_books (book_no),
	user_id varchar(20) references spring_users (user_id),
	cart_item_created_date date default current_date,
	unique (book_no, user_id)
);

create table spring_order_state_categories(
	order_state_category_no integer primary key,
	order_state_category_name varchar(100) not null
);

create table spring_orders (
	order_no integer generated by default as identity primary key,
	user_id varchar(20) not null references spring_users (user_id),
	order_state_category_no integer references spring_order_state_categories (order_state_category_no),
	order_created_date date default current_date,
	order_updated_date date default current_date,
	order_canceled_date date
);

create table spring_order_items (
	order_item_no integer generated by default as identity primary key,
	book_no integer references spring_books (book_no),
	order_book_price integer,
	order_item_amount integer,
	order_created_date date default current_date
);

