PGDMP                          x            arac_kiralama    12.3    12.3 Y    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24585    arac_kiralama    DATABASE     �   CREATE DATABASE arac_kiralama WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Turkish_Turkey.1254' LC_CTYPE = 'Turkish_Turkey.1254';
    DROP DATABASE arac_kiralama;
                postgres    false            �            1259    24626    arac    TABLE     �  CREATE TABLE public.arac (
    arac_no integer NOT NULL,
    plaka_no character varying(100) NOT NULL,
    arac_marka character varying(100) NOT NULL,
    arac_model character varying(100) NOT NULL,
    arac_model_yil integer NOT NULL,
    arac_sinif_no integer NOT NULL,
    arac_koltuk_sayi integer NOT NULL,
    arac_yt_no integer NOT NULL,
    arac_vt_no integer NOT NULL,
    gunluk_kira_fiyat money NOT NULL
);
    DROP TABLE public.arac;
       public         heap    postgres    false            �            1259    24611 
   arac_sinif    TABLE     {   CREATE TABLE public.arac_sinif (
    arac_sinif_no integer NOT NULL,
    arac_sinif_adi character varying(100) NOT NULL
);
    DROP TABLE public.arac_sinif;
       public         heap    postgres    false            �            1259    24621    arac_vites_turu    TABLE     z   CREATE TABLE public.arac_vites_turu (
    arac_vt_no integer NOT NULL,
    arac_vt_adi character varying(100) NOT NULL
);
 #   DROP TABLE public.arac_vites_turu;
       public         heap    postgres    false            �            1259    24616    arac_yakit_turu    TABLE     z   CREATE TABLE public.arac_yakit_turu (
    arac_yt_no integer NOT NULL,
    arac_yt_adi character varying(100) NOT NULL
);
 #   DROP TABLE public.arac_yakit_turu;
       public         heap    postgres    false            �            1259    24641 	   ek_hizmet    TABLE     �   CREATE TABLE public.ek_hizmet (
    ek_hizmet_no integer NOT NULL,
    ek_hizmet_adi character varying(100) NOT NULL,
    ek_hizmet_fiyat money NOT NULL
);
    DROP TABLE public.ek_hizmet;
       public         heap    postgres    false            �            1259    24661    fatura    TABLE     �   CREATE TABLE public.fatura (
    fatura_no integer NOT NULL,
    kira_no integer NOT NULL,
    toplam_fiyat money,
    odeme_turu_no integer NOT NULL
);
    DROP TABLE public.fatura;
       public         heap    postgres    false            �            1259    32942    firma    TABLE     �   CREATE TABLE public.firma (
    firma_no integer NOT NULL,
    firma_adi character varying(100) NOT NULL,
    firma_adres character varying(300) NOT NULL,
    il_plaka_no integer NOT NULL
);
    DROP TABLE public.firma;
       public         heap    postgres    false            �            1259    32937    il    TABLE     i   CREATE TABLE public.il (
    il_plaka_no integer NOT NULL,
    il_adi character varying(100) NOT NULL
);
    DROP TABLE public.il;
       public         heap    postgres    false            �            1259    24646    kira    TABLE     9  CREATE TABLE public.kira (
    kira_no integer NOT NULL,
    arac_no integer NOT NULL,
    musteri_no integer NOT NULL,
    alim_trh date NOT NULL,
    teslim_trh date NOT NULL,
    teslim_sube integer NOT NULL,
    personel_no integer NOT NULL,
    kira_rt_no integer NOT NULL,
    alim_sube integer NOT NULL
);
    DROP TABLE public.kira;
       public         heap    postgres    false            �            1259    24651    kira_ek_hizmet    TABLE     �   CREATE TABLE public.kira_ek_hizmet (
    kira_eh_no integer NOT NULL,
    kira_no integer NOT NULL,
    ek_hizmet_no integer NOT NULL
);
 "   DROP TABLE public.kira_ek_hizmet;
       public         heap    postgres    false            �            1259    24631    kira_rezervasyon_turu    TABLE     �   CREATE TABLE public.kira_rezervasyon_turu (
    kira_rt_no integer NOT NULL,
    kira_rt_adi character varying(100) NOT NULL
);
 )   DROP TABLE public.kira_rezervasyon_turu;
       public         heap    postgres    false            �            1259    24591    musteri    TABLE     �  CREATE TABLE public.musteri (
    musteri_no integer NOT NULL,
    musteri_adi character varying(100) NOT NULL,
    musteri_soyadi character varying(100) NOT NULL,
    musteri_adres character varying(300) NOT NULL,
    musteri_d_trh date NOT NULL,
    e_posta character varying(100) NOT NULL,
    telefon character varying(20) NOT NULL,
    ehliyet_alim_trh date NOT NULL,
    ehliyet_no character varying(50) NOT NULL,
    tc_no bigint NOT NULL,
    il_plaka_no integer NOT NULL
);
    DROP TABLE public.musteri;
       public         heap    postgres    false            �            1259    24656 
   odeme_turu    TABLE     {   CREATE TABLE public.odeme_turu (
    odeme_turu_no integer NOT NULL,
    odeme_turu_adi character varying(100) NOT NULL
);
    DROP TABLE public.odeme_turu;
       public         heap    postgres    false            �            1259    24606    personel    TABLE     <  CREATE TABLE public.personel (
    personel_no integer NOT NULL,
    personel_adi character varying(100) NOT NULL,
    personel_soyadi character varying(100) NOT NULL,
    sube_no integer NOT NULL,
    telefon character varying(20) NOT NULL,
    adres character varying(300) NOT NULL,
    dogum_trh date NOT NULL
);
    DROP TABLE public.personel;
       public         heap    postgres    false            �            1259    24636    rezervasyon    TABLE     a  CREATE TABLE public.rezervasyon (
    rezervasyon_no integer NOT NULL,
    arac_no integer NOT NULL,
    musteri_no integer NOT NULL,
    alim_trh date NOT NULL,
    teslim_trh date NOT NULL,
    alim_sube integer NOT NULL,
    teslim_sube integer NOT NULL,
    personel_no integer NOT NULL,
    kira_rt_no integer NOT NULL,
    onay bit(1) NOT NULL
);
    DROP TABLE public.rezervasyon;
       public         heap    postgres    false            �            1259    24601    sube    TABLE     �   CREATE TABLE public.sube (
    sube_no integer NOT NULL,
    sube_adi character varying(50) NOT NULL,
    firma_no integer NOT NULL
);
    DROP TABLE public.sube;
       public         heap    postgres    false            �            1259    24666    teslimat    TABLE     �   CREATE TABLE public.teslimat (
    teslimat_no integer NOT NULL,
    kira_no integer NOT NULL,
    teslim_trh date NOT NULL,
    ek_masraf money NOT NULL
);
    DROP TABLE public.teslimat;
       public         heap    postgres    false            �          0    24626    arac 
   TABLE DATA           �   COPY public.arac (arac_no, plaka_no, arac_marka, arac_model, arac_model_yil, arac_sinif_no, arac_koltuk_sayi, arac_yt_no, arac_vt_no, gunluk_kira_fiyat) FROM stdin;
    public          postgres    false    208   ;l       �          0    24611 
   arac_sinif 
   TABLE DATA           C   COPY public.arac_sinif (arac_sinif_no, arac_sinif_adi) FROM stdin;
    public          postgres    false    205   ;m       �          0    24621    arac_vites_turu 
   TABLE DATA           B   COPY public.arac_vites_turu (arac_vt_no, arac_vt_adi) FROM stdin;
    public          postgres    false    207   tm       �          0    24616    arac_yakit_turu 
   TABLE DATA           B   COPY public.arac_yakit_turu (arac_yt_no, arac_yt_adi) FROM stdin;
    public          postgres    false    206   �m       �          0    24641 	   ek_hizmet 
   TABLE DATA           Q   COPY public.ek_hizmet (ek_hizmet_no, ek_hizmet_adi, ek_hizmet_fiyat) FROM stdin;
    public          postgres    false    211   �m       �          0    24661    fatura 
   TABLE DATA           Q   COPY public.fatura (fatura_no, kira_no, toplam_fiyat, odeme_turu_no) FROM stdin;
    public          postgres    false    215   Sn       �          0    32942    firma 
   TABLE DATA           N   COPY public.firma (firma_no, firma_adi, firma_adres, il_plaka_no) FROM stdin;
    public          postgres    false    218   yn       �          0    32937    il 
   TABLE DATA           1   COPY public.il (il_plaka_no, il_adi) FROM stdin;
    public          postgres    false    217   o       �          0    24646    kira 
   TABLE DATA           �   COPY public.kira (kira_no, arac_no, musteri_no, alim_trh, teslim_trh, teslim_sube, personel_no, kira_rt_no, alim_sube) FROM stdin;
    public          postgres    false    212   lo       �          0    24651    kira_ek_hizmet 
   TABLE DATA           K   COPY public.kira_ek_hizmet (kira_eh_no, kira_no, ek_hizmet_no) FROM stdin;
    public          postgres    false    213   �o       �          0    24631    kira_rezervasyon_turu 
   TABLE DATA           H   COPY public.kira_rezervasyon_turu (kira_rt_no, kira_rt_adi) FROM stdin;
    public          postgres    false    209   �o       �          0    24591    musteri 
   TABLE DATA           �   COPY public.musteri (musteri_no, musteri_adi, musteri_soyadi, musteri_adres, musteri_d_trh, e_posta, telefon, ehliyet_alim_trh, ehliyet_no, tc_no, il_plaka_no) FROM stdin;
    public          postgres    false    202   p       �          0    24656 
   odeme_turu 
   TABLE DATA           C   COPY public.odeme_turu (odeme_turu_no, odeme_turu_adi) FROM stdin;
    public          postgres    false    214   mp       �          0    24606    personel 
   TABLE DATA           r   COPY public.personel (personel_no, personel_adi, personel_soyadi, sube_no, telefon, adres, dogum_trh) FROM stdin;
    public          postgres    false    204   �p       �          0    24636    rezervasyon 
   TABLE DATA           �   COPY public.rezervasyon (rezervasyon_no, arac_no, musteri_no, alim_trh, teslim_trh, alim_sube, teslim_sube, personel_no, kira_rt_no, onay) FROM stdin;
    public          postgres    false    210   �q       �          0    24601    sube 
   TABLE DATA           ;   COPY public.sube (sube_no, sube_adi, firma_no) FROM stdin;
    public          postgres    false    203   r       �          0    24666    teslimat 
   TABLE DATA           O   COPY public.teslimat (teslimat_no, kira_no, teslim_trh, ek_masraf) FROM stdin;
    public          postgres    false    216   �r       �
           2606    24615    arac_sinif Arac_Sinif_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.arac_sinif
    ADD CONSTRAINT "Arac_Sinif_pkey" PRIMARY KEY (arac_sinif_no);
 F   ALTER TABLE ONLY public.arac_sinif DROP CONSTRAINT "Arac_Sinif_pkey";
       public            postgres    false    205            �
           2606    24625 $   arac_vites_turu Arac_Vites_Turu_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.arac_vites_turu
    ADD CONSTRAINT "Arac_Vites_Turu_pkey" PRIMARY KEY (arac_vt_no);
 P   ALTER TABLE ONLY public.arac_vites_turu DROP CONSTRAINT "Arac_Vites_Turu_pkey";
       public            postgres    false    207            �
           2606    24620 $   arac_yakit_turu Arac_Yakit_Turu_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.arac_yakit_turu
    ADD CONSTRAINT "Arac_Yakit_Turu_pkey" PRIMARY KEY (arac_yt_no);
 P   ALTER TABLE ONLY public.arac_yakit_turu DROP CONSTRAINT "Arac_Yakit_Turu_pkey";
       public            postgres    false    206            �
           2606    24630    arac Arac_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.arac
    ADD CONSTRAINT "Arac_pkey" PRIMARY KEY (arac_no);
 :   ALTER TABLE ONLY public.arac DROP CONSTRAINT "Arac_pkey";
       public            postgres    false    208            �
           2606    24645    ek_hizmet Ek_Hizmet_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.ek_hizmet
    ADD CONSTRAINT "Ek_Hizmet_pkey" PRIMARY KEY (ek_hizmet_no);
 D   ALTER TABLE ONLY public.ek_hizmet DROP CONSTRAINT "Ek_Hizmet_pkey";
       public            postgres    false    211            �
           2606    24665    fatura Fatura_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.fatura
    ADD CONSTRAINT "Fatura_pkey" PRIMARY KEY (fatura_no);
 >   ALTER TABLE ONLY public.fatura DROP CONSTRAINT "Fatura_pkey";
       public            postgres    false    215            �
           2606    24655 "   kira_ek_hizmet Kira_Ek_Hizmet_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.kira_ek_hizmet
    ADD CONSTRAINT "Kira_Ek_Hizmet_pkey" PRIMARY KEY (kira_eh_no);
 N   ALTER TABLE ONLY public.kira_ek_hizmet DROP CONSTRAINT "Kira_Ek_Hizmet_pkey";
       public            postgres    false    213            �
           2606    24635 0   kira_rezervasyon_turu Kira_Rezervasyon_Turu_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.kira_rezervasyon_turu
    ADD CONSTRAINT "Kira_Rezervasyon_Turu_pkey" PRIMARY KEY (kira_rt_no);
 \   ALTER TABLE ONLY public.kira_rezervasyon_turu DROP CONSTRAINT "Kira_Rezervasyon_Turu_pkey";
       public            postgres    false    209            �
           2606    24650    kira Kira_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.kira
    ADD CONSTRAINT "Kira_pkey" PRIMARY KEY (kira_no);
 :   ALTER TABLE ONLY public.kira DROP CONSTRAINT "Kira_pkey";
       public            postgres    false    212            �
           2606    24595    musteri Musteri_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT "Musteri_pkey" PRIMARY KEY (musteri_no);
 @   ALTER TABLE ONLY public.musteri DROP CONSTRAINT "Musteri_pkey";
       public            postgres    false    202            �
           2606    24660    odeme_turu Odeme_Turu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.odeme_turu
    ADD CONSTRAINT "Odeme_Turu_pkey" PRIMARY KEY (odeme_turu_no);
 F   ALTER TABLE ONLY public.odeme_turu DROP CONSTRAINT "Odeme_Turu_pkey";
       public            postgres    false    214            �
           2606    24610    personel Personel_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT "Personel_pkey" PRIMARY KEY (personel_no);
 B   ALTER TABLE ONLY public.personel DROP CONSTRAINT "Personel_pkey";
       public            postgres    false    204            �
           2606    24605    sube Sube_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.sube
    ADD CONSTRAINT "Sube_pkey" PRIMARY KEY (sube_no);
 :   ALTER TABLE ONLY public.sube DROP CONSTRAINT "Sube_pkey";
       public            postgres    false    203            �
           2606    24670    teslimat Teslimat_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.teslimat
    ADD CONSTRAINT "Teslimat_pkey" PRIMARY KEY (teslimat_no);
 B   ALTER TABLE ONLY public.teslimat DROP CONSTRAINT "Teslimat_pkey";
       public            postgres    false    216            �
           2606    32946    firma firma_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.firma
    ADD CONSTRAINT firma_pkey PRIMARY KEY (firma_no);
 :   ALTER TABLE ONLY public.firma DROP CONSTRAINT firma_pkey;
       public            postgres    false    218            �
           2606    32941 
   il il_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.il
    ADD CONSTRAINT il_pkey PRIMARY KEY (il_plaka_no);
 4   ALTER TABLE ONLY public.il DROP CONSTRAINT il_pkey;
       public            postgres    false    217            �
           2606    24640    rezervasyon rezervasyon_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT rezervasyon_pkey PRIMARY KEY (rezervasyon_no);
 F   ALTER TABLE ONLY public.rezervasyon DROP CONSTRAINT rezervasyon_pkey;
       public            postgres    false    210            �
           1259    24724    fki_Alim_Sube    INDEX     E   CREATE INDEX "fki_Alim_Sube" ON public.kira USING btree (alim_sube);
 #   DROP INDEX public."fki_Alim_Sube";
       public            postgres    false    212            �
           1259    24712    fki_Arac_No    INDEX     A   CREATE INDEX "fki_Arac_No" ON public.kira USING btree (arac_no);
 !   DROP INDEX public."fki_Arac_No";
       public            postgres    false    212            �
           1259    24676    fki_Arac_Sinif_No    INDEX     M   CREATE INDEX "fki_Arac_Sinif_No" ON public.arac USING btree (arac_sinif_no);
 '   DROP INDEX public."fki_Arac_Sinif_No";
       public            postgres    false    208            �
           1259    24688    fki_Arac_VT_No    INDEX     G   CREATE INDEX "fki_Arac_VT_No" ON public.arac USING btree (arac_vt_no);
 $   DROP INDEX public."fki_Arac_VT_No";
       public            postgres    false    208            �
           1259    24682    fki_Arac_YT_No    INDEX     G   CREATE INDEX "fki_Arac_YT_No" ON public.arac USING btree (arac_yt_no);
 $   DROP INDEX public."fki_Arac_YT_No";
       public            postgres    false    208            �
           1259    24803    fki_Firma_No    INDEX     C   CREATE INDEX "fki_Firma_No" ON public.sube USING btree (firma_no);
 "   DROP INDEX public."fki_Firma_No";
       public            postgres    false    203            �
           1259    24694    fki_Kira_No    INDEX     C   CREATE INDEX "fki_Kira_No" ON public.fatura USING btree (kira_no);
 !   DROP INDEX public."fki_Kira_No";
       public            postgres    false    215            �
           1259    24742    fki_Kira_RT_No    INDEX     G   CREATE INDEX "fki_Kira_RT_No" ON public.kira USING btree (kira_rt_no);
 $   DROP INDEX public."fki_Kira_RT_No";
       public            postgres    false    212            �
           1259    24718    fki_Musteri_No    INDEX     G   CREATE INDEX "fki_Musteri_No" ON public.kira USING btree (musteri_no);
 $   DROP INDEX public."fki_Musteri_No";
       public            postgres    false    212            �
           1259    24700    fki_Odeme_Turu_No    INDEX     O   CREATE INDEX "fki_Odeme_Turu_No" ON public.fatura USING btree (odeme_turu_no);
 '   DROP INDEX public."fki_Odeme_Turu_No";
       public            postgres    false    215            �
           1259    24736    fki_Personel_No    INDEX     I   CREATE INDEX "fki_Personel_No" ON public.kira USING btree (personel_no);
 %   DROP INDEX public."fki_Personel_No";
       public            postgres    false    212            �
           1259    24767    fki_Sube_No    INDEX     E   CREATE INDEX "fki_Sube_No" ON public.personel USING btree (sube_no);
 !   DROP INDEX public."fki_Sube_No";
       public            postgres    false    204            �
           1259    24730    fki_Teslim_Sube    INDEX     I   CREATE INDEX "fki_Teslim_Sube" ON public.kira USING btree (teslim_sube);
 %   DROP INDEX public."fki_Teslim_Sube";
       public            postgres    false    212            �
           2606    24719    kira Alim_Sube    FK CONSTRAINT        ALTER TABLE ONLY public.kira
    ADD CONSTRAINT "Alim_Sube" FOREIGN KEY (alim_sube) REFERENCES public.sube(sube_no) NOT VALID;
 :   ALTER TABLE ONLY public.kira DROP CONSTRAINT "Alim_Sube";
       public          postgres    false    212    2754    203            �
           2606    24707    kira Arac_No    FK CONSTRAINT     {   ALTER TABLE ONLY public.kira
    ADD CONSTRAINT "Arac_No" FOREIGN KEY (arac_no) REFERENCES public.arac(arac_no) NOT VALID;
 8   ALTER TABLE ONLY public.kira DROP CONSTRAINT "Arac_No";
       public          postgres    false    208    2766    212            �
           2606    24671    arac Arac_Sinif_No    FK CONSTRAINT     �   ALTER TABLE ONLY public.arac
    ADD CONSTRAINT "Arac_Sinif_No" FOREIGN KEY (arac_sinif_no) REFERENCES public.arac_sinif(arac_sinif_no) NOT VALID;
 >   ALTER TABLE ONLY public.arac DROP CONSTRAINT "Arac_Sinif_No";
       public          postgres    false    208    205    2760            �
           2606    24683    arac Arac_VT_No    FK CONSTRAINT     �   ALTER TABLE ONLY public.arac
    ADD CONSTRAINT "Arac_VT_No" FOREIGN KEY (arac_vt_no) REFERENCES public.arac_vites_turu(arac_vt_no) NOT VALID;
 ;   ALTER TABLE ONLY public.arac DROP CONSTRAINT "Arac_VT_No";
       public          postgres    false    208    2764    207            �
           2606    24677    arac Arac_YT_No    FK CONSTRAINT     �   ALTER TABLE ONLY public.arac
    ADD CONSTRAINT "Arac_YT_No" FOREIGN KEY (arac_yt_no) REFERENCES public.arac_yakit_turu(arac_yt_no) NOT VALID;
 ;   ALTER TABLE ONLY public.arac DROP CONSTRAINT "Arac_YT_No";
       public          postgres    false    208    2762    206            �
           2606    24748    kira_ek_hizmet Ek_Hizmet_No    FK CONSTRAINT     �   ALTER TABLE ONLY public.kira_ek_hizmet
    ADD CONSTRAINT "Ek_Hizmet_No" FOREIGN KEY (kira_eh_no) REFERENCES public.ek_hizmet(ek_hizmet_no) NOT VALID;
 G   ALTER TABLE ONLY public.kira_ek_hizmet DROP CONSTRAINT "Ek_Hizmet_No";
       public          postgres    false    213    2775    211                        2606    24689    fatura Kira_No    FK CONSTRAINT     }   ALTER TABLE ONLY public.fatura
    ADD CONSTRAINT "Kira_No" FOREIGN KEY (kira_no) REFERENCES public.kira(kira_no) NOT VALID;
 :   ALTER TABLE ONLY public.fatura DROP CONSTRAINT "Kira_No";
       public          postgres    false    215    2777    212            �
           2606    24743    kira_ek_hizmet Kira_No    FK CONSTRAINT     �   ALTER TABLE ONLY public.kira_ek_hizmet
    ADD CONSTRAINT "Kira_No" FOREIGN KEY (kira_no) REFERENCES public.kira(kira_no) NOT VALID;
 B   ALTER TABLE ONLY public.kira_ek_hizmet DROP CONSTRAINT "Kira_No";
       public          postgres    false    213    212    2777                       2606    24804    teslimat Kira_No    FK CONSTRAINT        ALTER TABLE ONLY public.teslimat
    ADD CONSTRAINT "Kira_No" FOREIGN KEY (kira_no) REFERENCES public.kira(kira_no) NOT VALID;
 <   ALTER TABLE ONLY public.teslimat DROP CONSTRAINT "Kira_No";
       public          postgres    false    212    216    2777            �
           2606    24737    kira Kira_RT_No    FK CONSTRAINT     �   ALTER TABLE ONLY public.kira
    ADD CONSTRAINT "Kira_RT_No" FOREIGN KEY (kira_rt_no) REFERENCES public.kira_rezervasyon_turu(kira_rt_no) NOT VALID;
 ;   ALTER TABLE ONLY public.kira DROP CONSTRAINT "Kira_RT_No";
       public          postgres    false    212    209    2771            �
           2606    24713    kira Musteri_No    FK CONSTRAINT     �   ALTER TABLE ONLY public.kira
    ADD CONSTRAINT "Musteri_No" FOREIGN KEY (musteri_no) REFERENCES public.musteri(musteri_no) NOT VALID;
 ;   ALTER TABLE ONLY public.kira DROP CONSTRAINT "Musteri_No";
       public          postgres    false    2752    212    202                       2606    24695    fatura Odeme_Turu_No    FK CONSTRAINT     �   ALTER TABLE ONLY public.fatura
    ADD CONSTRAINT "Odeme_Turu_No" FOREIGN KEY (odeme_turu_no) REFERENCES public.odeme_turu(odeme_turu_no) NOT VALID;
 @   ALTER TABLE ONLY public.fatura DROP CONSTRAINT "Odeme_Turu_No";
       public          postgres    false    214    215    2787            �
           2606    24731    kira Personel_No    FK CONSTRAINT     �   ALTER TABLE ONLY public.kira
    ADD CONSTRAINT "Personel_No" FOREIGN KEY (personel_no) REFERENCES public.personel(personel_no) NOT VALID;
 <   ALTER TABLE ONLY public.kira DROP CONSTRAINT "Personel_No";
       public          postgres    false    212    204    2757            �
           2606    24762    personel Sube_No    FK CONSTRAINT        ALTER TABLE ONLY public.personel
    ADD CONSTRAINT "Sube_No" FOREIGN KEY (sube_no) REFERENCES public.sube(sube_no) NOT VALID;
 <   ALTER TABLE ONLY public.personel DROP CONSTRAINT "Sube_No";
       public          postgres    false    203    2754    204            �
           2606    24725    kira Teslim_Sube    FK CONSTRAINT     �   ALTER TABLE ONLY public.kira
    ADD CONSTRAINT "Teslim_Sube" FOREIGN KEY (teslim_sube) REFERENCES public.sube(sube_no) NOT VALID;
 <   ALTER TABLE ONLY public.kira DROP CONSTRAINT "Teslim_Sube";
       public          postgres    false    212    203    2754            �
           2606    24778    rezervasyon alim_sube    FK CONSTRAINT     �   ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT alim_sube FOREIGN KEY (alim_sube) REFERENCES public.sube(sube_no) NOT VALID;
 ?   ALTER TABLE ONLY public.rezervasyon DROP CONSTRAINT alim_sube;
       public          postgres    false    2754    210    203            �
           2606    24768    rezervasyon arac_no    FK CONSTRAINT     �   ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT arac_no FOREIGN KEY (arac_no) REFERENCES public.arac(arac_no) NOT VALID;
 =   ALTER TABLE ONLY public.rezervasyon DROP CONSTRAINT arac_no;
       public          postgres    false    208    2766    210            �
           2606    24793    rezervasyon kira_rt_no    FK CONSTRAINT     �   ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT kira_rt_no FOREIGN KEY (kira_rt_no) REFERENCES public.kira_rezervasyon_turu(kira_rt_no) NOT VALID;
 @   ALTER TABLE ONLY public.rezervasyon DROP CONSTRAINT kira_rt_no;
       public          postgres    false    210    2771    209            �
           2606    24773    rezervasyon musteri_no    FK CONSTRAINT     �   ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT musteri_no FOREIGN KEY (musteri_no) REFERENCES public.musteri(musteri_no) NOT VALID;
 @   ALTER TABLE ONLY public.rezervasyon DROP CONSTRAINT musteri_no;
       public          postgres    false    2752    210    202            �
           2606    24788    rezervasyon personel_no    FK CONSTRAINT     �   ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT personel_no FOREIGN KEY (personel_no) REFERENCES public.personel(personel_no) NOT VALID;
 A   ALTER TABLE ONLY public.rezervasyon DROP CONSTRAINT personel_no;
       public          postgres    false    210    204    2757            �
           2606    24783    rezervasyon teslim_sube    FK CONSTRAINT     �   ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT teslim_sube FOREIGN KEY (teslim_sube) REFERENCES public.sube(sube_no) NOT VALID;
 A   ALTER TABLE ONLY public.rezervasyon DROP CONSTRAINT teslim_sube;
       public          postgres    false    203    2754    210            �   �   x�u��j�0��O�" r�4m��VD���SA�&������2��;I��F/����?�9d�ʒ�i���ԺwWx�>4�8(��O��b"�PE�i[�y���m����+)c�A���n���8�5m�}@EO�TD8��z�]�Nݗ���M����?y��Tl��1��!C���gy�_�յ��Ž�P^ȁ#[m��qO(�P����[�	����!A��Go�#���0���q�$?"Im�      �   )   x�3�L��������2���/�M��2��9�'��+F��� �Q
'      �   +   x�3��M�+M��2��/��M,���2�L,:�Q.���� -��      �   $   x�3�LJͫ���2��)H�2�LɬJ������ t:Y      �   `   x�3��K,�LO,���SH��H�:�����@���ˈ�)5)5[!;?�����RN{C��1�wbU�BY�Bq��9G6f+g���$�tAT��qqq �e      �      x�3�4���4����� �      �   �   x�U�;�0��z�9�q�>�DO��D�Z�8�܊;p0R����(\%���b���	�G[�@{�9�������0�1�%7��K�H��te-��׻�
�ӈ��Mߘ�2C28I���[	n��#�?A�88      �   L   x�36�<���$1/�4�ˌ�1/;�(���(Z��Y�eh��TZT��eh�锘sdcvj1Hؐ�)3'593�+F��� \�      �   '   x�3�4�4�4202�5��54�3�L���@�=... �3      �      x�3�4�4����� �Y      �   -   x�3���+I-�K-�2�,I�IM���2�<��JD�r��qqq �7      �   Z   x�=�1
�0 �9��%I��q���U��]t<8��^��ۊu�r��02�/��4�{[s��l�*<�J �?M ��� r�w�=
U�      �   $   x�3��K��,�2��.JM�T�N,*9��+F��� z�_      �   K  x�5��n�0E�ǿ���{C;�J�f���m�n�@$���E3f-K�l���gb:���K�Eۓn`U��1O8�L	�MY�n��8 �2��	~����A9*4(�e�')<�6���'����T]�"�^pN������ЧJ[��Yc�n-���gA�0A��ơ�Ju^Hf���[���q0����2M(�Gw������F
����|�U�b���t��0(o?p)���o5�-���K�8���$eVU��U[��-�X6���)���r1��>�V��\�qpd��9���U_�"�Abxh�u7��qppbL��w��+bV��(�w͏      �      x������ � �      �   w   x�3��M-�N�R8:�4)�Ӑˈ��̣�s2�"ƨJ��L8��l�:�1'�.f��Șˌ�;����#+����L�,8sJ�lL��9�'.j��̔�Ѐ�Ȇ�����r�b1z\\\ �F�      �      x������ � �     