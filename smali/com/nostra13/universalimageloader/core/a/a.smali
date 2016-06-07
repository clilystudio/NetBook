.class public final Lcom/nostra13/universalimageloader/core/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/a/d;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/a/a;->a:Z

    .line 58
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/a/b;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 119
    .line 122
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    sget-object v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v3, p0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 124
    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v0, v1

    .line 149
    :goto_1
    :pswitch_1
    new-instance v2, Lcom/nostra13/universalimageloader/core/a/b;

    invoke-direct {v2, v1, v0}, Lcom/nostra13/universalimageloader/core/a/b;-><init>(IZ)V

    return-object v2

    :pswitch_2
    move v0, v1

    .line 133
    :pswitch_3
    const/16 v1, 0x5a

    .line 134
    goto :goto_1

    :pswitch_4
    move v0, v1

    .line 138
    :pswitch_5
    const/16 v1, 0xb4

    .line 139
    goto :goto_1

    :pswitch_6
    move v0, v1

    .line 143
    :pswitch_7
    const/16 v1, 0x10e

    goto :goto_1

    .line 147
    :catch_0
    move-exception v2

    const-string v2, "Can\'t read EXIF tags from file [%s]"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {v2, v0}, Lcom/nostra13/universalimageloader/b/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private a(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/a/e;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-object p1

    .line 175
    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    .line 176
    invoke-static {p2}, Lcom/nostra13/universalimageloader/core/a/a;->b(Lcom/nostra13/universalimageloader/core/a/e;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0
.end method

.method private static b(Lcom/nostra13/universalimageloader/core/a/e;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/a/e;->f()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/a/e;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nostra13/universalimageloader/core/a/e;)Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 74
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/a/a;->b(Lcom/nostra13/universalimageloader/core/a/e;)Ljava/io/InputStream;

    move-result-object v2

    .line 1099
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1100
    const/4 v0, 0x1

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1101
    const/4 v0, 0x0

    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1104
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->b()Ljava/lang/String;

    move-result-object v4

    .line 1105
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 1114
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x5

    if-lt v5, v7, :cond_1

    const-string v5, "image/jpeg"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v0

    sget-object v5, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v0, v5, :cond_1

    move v0, v6

    .line 1105
    :goto_0
    if-eqz v0, :cond_2

    .line 1106
    invoke-static {v4}, Lcom/nostra13/universalimageloader/core/a/a;->a(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/a/b;

    move-result-object v0

    .line 1110
    :goto_1
    new-instance v4, Lcom/nostra13/universalimageloader/core/a/c;

    new-instance v5, Lcom/nostra13/universalimageloader/core/assist/c;

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v0, Lcom/nostra13/universalimageloader/core/a/b;->a:I

    invoke-direct {v5, v7, v3, v8}, Lcom/nostra13/universalimageloader/core/assist/c;-><init>(III)V

    invoke-direct {v4, v5, v0}, Lcom/nostra13/universalimageloader/core/a/c;-><init>(Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/a/b;)V

    .line 77
    invoke-direct {p0, v2, p1}, Lcom/nostra13/universalimageloader/core/a/a;->a(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/a/e;)Ljava/io/InputStream;

    move-result-object v2

    .line 78
    iget-object v3, v4, Lcom/nostra13/universalimageloader/core/a/c;->a:Lcom/nostra13/universalimageloader/core/assist/c;

    .line 1153
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->d()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    .line 1155
    sget-object v5, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v0, v5, :cond_3

    .line 1156
    invoke-static {v3}, Lcom/nostra13/universalimageloader/b/a;->a(Lcom/nostra13/universalimageloader/core/assist/c;)I

    move-result v0

    .line 1162
    :goto_2
    if-le v0, v6, :cond_0

    iget-boolean v5, p0, Lcom/nostra13/universalimageloader/core/a/a;->a:Z

    if-eqz v5, :cond_0

    .line 1163
    const-string v5, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3, v0}, Lcom/nostra13/universalimageloader/core/assist/c;->a(I)Lcom/nostra13/universalimageloader/core/assist/c;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v7}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1166
    :cond_0
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->i()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 1167
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 79
    const/4 v0, 0x0

    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 81
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    .line 84
    if-nez v0, :cond_5

    .line 85
    const-string v2, "Image can\'t be decoded [%s]"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/b/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :goto_3
    return-object v0

    :cond_1
    move v0, v1

    .line 1114
    goto :goto_0

    .line 1108
    :cond_2
    :try_start_1
    new-instance v0, Lcom/nostra13/universalimageloader/core/a/b;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/a/b;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    move-object v1, v2

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    throw v0

    .line 1158
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->c()Lcom/nostra13/universalimageloader/core/assist/c;

    move-result-object v5

    .line 1159
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v0, v7, :cond_4

    move v0, v6

    .line 1160
    :goto_4
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->e()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v7

    invoke-static {v3, v5, v7, v0}, Lcom/nostra13/universalimageloader/b/a;->a(Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v1

    .line 1159
    goto :goto_4

    .line 87
    :cond_5
    iget-object v2, v4, Lcom/nostra13/universalimageloader/core/a/c;->b:Lcom/nostra13/universalimageloader/core/a/b;

    iget v3, v2, Lcom/nostra13/universalimageloader/core/a/b;->a:I

    iget-object v2, v4, Lcom/nostra13/universalimageloader/core/a/c;->b:Lcom/nostra13/universalimageloader/core/a/b;

    iget-boolean v4, v2, Lcom/nostra13/universalimageloader/core/a/b;->b:Z

    .line 1183
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1185
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->d()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v2

    .line 1186
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-eq v2, v7, :cond_6

    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v2, v7, :cond_7

    .line 1187
    :cond_6
    new-instance v7, Lcom/nostra13/universalimageloader/core/assist/c;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v8, v9, v3}, Lcom/nostra13/universalimageloader/core/assist/c;-><init>(III)V

    .line 1188
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->c()Lcom/nostra13/universalimageloader/core/assist/c;

    move-result-object v8

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->e()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v9

    sget-object v10, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v2, v10, :cond_b

    move v2, v6

    :goto_5
    invoke-static {v7, v8, v9, v2}, Lcom/nostra13/universalimageloader/b/a;->b(Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F

    move-result v2

    .line 1190
    invoke-static {v2, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_7

    .line 1191
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1193
    iget-boolean v8, p0, Lcom/nostra13/universalimageloader/core/a/a;->a:Z

    if-eqz v8, :cond_7

    .line 1194
    const-string v8, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-virtual {v7, v2}, Lcom/nostra13/universalimageloader/core/assist/c;->a(F)Lcom/nostra13/universalimageloader/core/assist/c;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v11

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v13

    invoke-static {v8, v9}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1199
    :cond_7
    if-eqz v4, :cond_8

    .line 1200
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v5, v2, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1202
    iget-boolean v2, p0, Lcom/nostra13/universalimageloader/core/a/a;->a:Z

    if-eqz v2, :cond_8

    const-string v2, "Flip image horizontally [%s]"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    invoke-static {v2, v4}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1205
    :cond_8
    if-eqz v3, :cond_9

    .line 1206
    int-to-float v2, v3

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1208
    iget-boolean v2, p0, Lcom/nostra13/universalimageloader/core/a/a;->a:Z

    if-eqz v2, :cond_9

    const-string v2, "Rotate image on %1$d\u00b0 [%2$s]"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/e;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-static {v2, v4}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1211
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1213
    if-eq v1, v0, :cond_a

    .line 1214
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    move-object v0, v1

    .line 87
    goto/16 :goto_3

    :cond_b
    move v2, v1

    .line 1188
    goto :goto_5
.end method
