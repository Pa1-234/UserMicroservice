PGDMP  /    3            
    {         	   pythonpoc    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16575 	   pythonpoc    DATABASE     �   CREATE DATABASE pythonpoc WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE pythonpoc;
                postgres    false            �            1259    16594    Address    TABLE     6  CREATE TABLE public."Address" (
    address_id integer NOT NULL,
    user_id integer,
    address character varying,
    city character varying,
    state character varying,
    country character varying,
    postal_code character varying(10),
    phone character varying,
    "isDefault" character varying
);
    DROP TABLE public."Address";
       public         heap    postgres    false            �            1259    16589    User_detail    TABLE     '  CREATE TABLE public."User_detail" (
    id integer NOT NULL,
    name character varying(100),
    email character varying(50),
    age integer,
    address character varying(200),
    phone character varying(10),
    password character varying(50),
    confirm_password character varying(50)
);
 !   DROP TABLE public."User_detail";
       public         heap    postgres    false            �            1259    16582    Users    TABLE       CREATE TABLE public."Users" (
    user_id integer NOT NULL,
    name character varying(100),
    email character varying(50),
    age integer,
    address character varying(200),
    phone character varying(10),
    password character varying,
    confirm_password character varying
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �          0    16594    Address 
   TABLE DATA           x   COPY public."Address" (address_id, user_id, address, city, state, country, postal_code, phone, "isDefault") FROM stdin;
    public          postgres    false    217   �       �          0    16589    User_detail 
   TABLE DATA           i   COPY public."User_detail" (id, name, email, age, address, phone, password, confirm_password) FROM stdin;
    public          postgres    false    216   �       �          0    16582    Users 
   TABLE DATA           h   COPY public."Users" (user_id, name, email, age, address, phone, password, confirm_password) FROM stdin;
    public          postgres    false    215          \           2606    16600    Address Address_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Address_pkey" PRIMARY KEY (address_id);
 B   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "Address_pkey";
       public            postgres    false    217            Z           2606    16593    User_detail User_detail_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."User_detail"
    ADD CONSTRAINT "User_detail_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."User_detail" DROP CONSTRAINT "User_detail_pkey";
       public            postgres    false    216            X           2606    16588    Users Users_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (user_id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    215            ]           2606    16601    Address Address_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Address_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(user_id);
 J   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "Address_user_id_fkey";
       public          postgres    false    215    4696    217            �      x������ � �      �      x������ � �      �   �   x�}��
�0Dg�cBm���%si��]�bb�ą�K��4%C(��-����%��Wi����<_h�m Dk�:�����������DisY�=�א��&��g��G�%�����Ak�����j�b1��u������{#�� �RE'     