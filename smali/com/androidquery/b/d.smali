.class public final Lcom/androidquery/b/d;
.super Lcom/androidquery/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/b/a",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/androidquery/b/d;",
        ">;"
    }
.end annotation


# static fields
.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:Z

.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/androidquery/b/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private static w:Landroid/graphics/Bitmap;

.field private static x:Landroid/graphics/Bitmap;


# instance fields
.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/graphics/Bitmap;

.field private r:F

.field private s:I

.field private t:Z

.field private u:F

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, 0x14

    const/4 v1, 0x1

    .line 69
    sput v0, Lcom/androidquery/b/d;->c:I

    .line 70
    sput v0, Lcom/androidquery/b/d;->d:I

    .line 71
    const/16 v0, 0x9c4

    sput v0, Lcom/androidquery/b/d;->e:I

    .line 72
    const v0, 0x27100

    sput v0, Lcom/androidquery/b/d;->f:I

    .line 73
    const v0, 0xf4240

    sput v0, Lcom/androidquery/b/d;->g:I

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/androidquery/b/d;->h:Z

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androidquery/b/d;->l:Ljava/util/HashMap;

    .line 547
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/b/d;->w:Landroid/graphics/Bitmap;

    .line 552
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/b/d;->x:Landroid/graphics/Bitmap;

    .line 856
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Lcom/androidquery/b/a;-><init>()V

    .line 92
    iput-boolean v1, p0, Lcom/androidquery/b/d;->t:Z

    .line 93
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/androidquery/b/d;->u:F

    .line 102
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/androidquery/b/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/b/d;

    invoke-virtual {v0, v1}, Lcom/androidquery/b/d;->b(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/b/d;

    invoke-virtual {v0, v1}, Lcom/androidquery/b/d;->a(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/b/d;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/androidquery/b/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private static a(II)I
    .locals 3

    .prologue
    .line 425
    const/4 v1, 0x1

    .line 427
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 438
    :cond_0
    return v1

    .line 429
    :cond_1
    shl-int/lit8 v2, p1, 0x1

    if-lt p0, v2, :cond_0

    .line 433
    div-int/lit8 p0, p0, 0x2

    .line 434
    shl-int/lit8 v1, v1, 0x1

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 740
    invoke-static {p0, p1, p2}, Lcom/androidquery/b/d;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 742
    invoke-static {}, Lcom/androidquery/b/d;->d()Ljava/util/Map;

    move-result-object v0

    .line 743
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 745
    if-nez v0, :cond_0

    .line 746
    invoke-static {}, Lcom/androidquery/b/d;->e()Ljava/util/Map;

    move-result-object v0

    .line 747
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 750
    :cond_0
    if-nez v0, :cond_1

    .line 751
    invoke-static {}, Lcom/androidquery/b/d;->f()Ljava/util/Map;

    move-result-object v0

    .line 752
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 754
    if-eqz v0, :cond_1

    .line 756
    invoke-static {}, Lcom/androidquery/b/d;->c()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 757
    sput-object v1, Lcom/androidquery/b/d;->k:Ljava/util/Map;

    move-object v0, v1

    .line 764
    :cond_1
    return-object v0
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/4 v6, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 303
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 331
    :cond_0
    :goto_0
    return-object p1

    .line 310
    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 311
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 317
    :goto_1
    if-lez v0, :cond_0

    .line 1336
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1337
    packed-switch v0, :pswitch_data_0

    .line 320
    :goto_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    const-string v1, "before"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    const-string v1, "after"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    if-eq p1, v0, :cond_2

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object p1, v0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 314
    invoke-static {v0}, Lcom/androidquery/util/a;->a(Ljava/lang/Throwable;)V

    move v0, v6

    goto :goto_1

    .line 1339
    :pswitch_0
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_2

    .line 1342
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2

    .line 1345
    :pswitch_2
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1346
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2

    .line 1349
    :pswitch_3
    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1350
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2

    .line 1353
    :pswitch_4
    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->setRotate(F)V

    goto/16 :goto_2

    .line 1356
    :pswitch_5
    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1357
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_2

    .line 1360
    :pswitch_6
    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    goto/16 :goto_2

    .line 1337
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 269
    .line 271
    if-nez p1, :cond_0

    .line 272
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 275
    :cond_0
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 276
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 282
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 284
    const/4 v3, 0x0

    invoke-static {v0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 286
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 287
    :try_start_2
    invoke-static {p0, v0}, Lcom/androidquery/b/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 294
    :cond_1
    invoke-static {v2}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    .line 297
    :goto_0
    return-object v0

    .line 291
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 292
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 294
    invoke-static {v2}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 294
    :goto_2
    invoke-static {v2}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    .line 295
    throw v0

    .line 293
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 291
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;[B)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 442
    iget v2, p0, Lcom/androidquery/b/d;->n:I

    iget-boolean v3, p0, Lcom/androidquery/b/d;->t:Z

    iget v4, p0, Lcom/androidquery/b/d;->s:I

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/b/d;->a(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 386
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 418
    :goto_0
    return-object v1

    .line 390
    :cond_0
    if-lez p2, :cond_3

    .line 392
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 393
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 395
    invoke-static {p0, p1, v2, p5}, Lcom/androidquery/b/d;->a(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    .line 397
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 398
    if-nez p3, :cond_1

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 399
    :cond_1
    invoke-static {v0, p2}, Lcom/androidquery/b/d;->a(II)I

    move-result v2

    .line 401
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 402
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 408
    :goto_1
    :try_start_0
    invoke-static {p0, p1, v0, p5}, Lcom/androidquery/b/d;->a(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    :goto_2
    if-lez p4, :cond_2

    .line 2063
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2064
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2067
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 2068
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2069
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2070
    int-to-float v6, p4

    .line 2072
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2073
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 2074
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2075
    invoke-virtual {v2, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2077
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2078
    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_3
    move-object v1, v0

    .line 418
    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 1679
    sput-object v1, Lcom/androidquery/b/d;->j:Ljava/util/Map;

    .line 1680
    sput-object v1, Lcom/androidquery/b/d;->i:Ljava/util/Map;

    .line 1681
    sput-object v1, Lcom/androidquery/b/d;->k:Ljava/util/Map;

    .line 411
    invoke-static {v0}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 250
    if-eqz p0, :cond_2

    .line 252
    invoke-static {p0, p2, p3}, Lcom/androidquery/b/d;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_1

    .line 261
    const-string v1, "decode image failed"

    invoke-static {v1, p0}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    :cond_1
    return-object v0

    .line 254
    :cond_2
    if-eqz p1, :cond_0

    .line 256
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 880
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 881
    new-instance v0, Lcom/androidquery/util/e;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/androidquery/util/e;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V

    .line 886
    :goto_0
    return-object v0

    .line 883
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/a/a;IILorg/apache/http/HttpHost;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 969
    const/4 v2, 0x0

    .line 971
    if-eqz p4, :cond_0

    .line 972
    move/from16 v0, p15

    invoke-static {p3, p6, v0}, Lcom/androidquery/b/d;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 975
    :cond_0
    if-eqz v2, :cond_1

    .line 976
    const v1, 0x40ff0001

    invoke-virtual {p2, v1, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 977
    const/4 v1, 0x0

    move-object/from16 v0, p12

    invoke-static {v0, p3, v1}, Lcom/androidquery/util/b;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 978
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, 0x4

    move-object v1, p2

    move-object/from16 v3, p8

    move/from16 v4, p7

    move/from16 v5, p9

    move/from16 v6, p10

    invoke-static/range {v1 .. v8}, Lcom/androidquery/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    .line 992
    :goto_0
    return-void

    .line 980
    :cond_1
    new-instance v2, Lcom/androidquery/b/d;

    invoke-direct {v2}, Lcom/androidquery/b/d;-><init>()V

    .line 981
    invoke-virtual {v2, p3}, Lcom/androidquery/b/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/b/d;

    .line 3114
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/androidquery/b/d;->m:Ljava/lang/ref/WeakReference;

    .line 981
    invoke-virtual {v1, p4}, Lcom/androidquery/b/d;->b(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/b/d;

    invoke-virtual {v1, p5}, Lcom/androidquery/b/d;->a(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/b/d;

    .line 3125
    iput p6, v1, Lcom/androidquery/b/d;->n:I

    .line 3171
    move/from16 v0, p7

    iput v0, v1, Lcom/androidquery/b/d;->o:I

    .line 4149
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/androidquery/b/d;->q:Landroid/graphics/Bitmap;

    .line 4182
    move/from16 v0, p9

    iput v0, v1, Lcom/androidquery/b/d;->p:I

    .line 4193
    move/from16 v0, p10

    iput v0, v1, Lcom/androidquery/b/d;->r:F

    .line 981
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 4224
    iput v3, v1, Lcom/androidquery/b/d;->u:F

    .line 981
    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/androidquery/b/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/b/d;

    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Lcom/androidquery/b/d;->a(Lcom/androidquery/a/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/b/d;

    move/from16 v0, p14

    invoke-virtual {v1, v0}, Lcom/androidquery/b/d;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/b/d;

    .line 4240
    move/from16 v0, p15

    iput v0, v1, Lcom/androidquery/b/d;->s:I

    .line 981
    move-object/from16 v0, p17

    invoke-virtual {v1, v0}, Lcom/androidquery/b/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 982
    if-eqz p16, :cond_2

    .line 983
    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/androidquery/b/d;->a(Ljava/lang/String;I)Ljava/lang/Object;

    .line 985
    :cond_2
    if-eqz p0, :cond_3

    .line 986
    invoke-virtual {v2, p0}, Lcom/androidquery/b/d;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 988
    :cond_3
    invoke-virtual {v2, p1}, Lcom/androidquery/b/d;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 892
    .line 2823
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/androidquery/b/d;->w:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    move-object p1, v1

    .line 2827
    :cond_0
    if-eqz p1, :cond_2

    .line 2828
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 893
    :cond_1
    :goto_0
    if-nez p1, :cond_4

    .line 894
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 927
    :goto_1
    return-void

    .line 2829
    :cond_2
    const/4 v0, -0x2

    if-ne p3, v0, :cond_3

    .line 2830
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2831
    :cond_3
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 2832
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 898
    :cond_4
    invoke-static {p0, p1, p5, p6}, Lcom/androidquery/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2931
    packed-switch p4, :pswitch_data_0

    :cond_5
    move v0, v4

    .line 901
    :goto_2
    if-eqz v0, :cond_8

    .line 902
    if-nez p2, :cond_7

    .line 903
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 904
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 905
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 919
    :goto_3
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 921
    if-eqz v0, :cond_9

    .line 922
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 923
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :pswitch_0
    move v0, v3

    .line 2933
    goto :goto_2

    .line 2935
    :pswitch_1
    const/4 v0, 0x3

    if-ne p7, v0, :cond_6

    move v0, v3

    goto :goto_2

    .line 2937
    :cond_6
    :pswitch_2
    if-ne p7, v3, :cond_5

    move v0, v3

    goto :goto_2

    .line 908
    :cond_7
    invoke-static {p0, p2, p5, p6}, Lcom/androidquery/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 909
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v5, v4

    aput-object v2, v5, v3

    .line 910
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 911
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 912
    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    move-object v2, v0

    move-object v0, v1

    .line 915
    goto :goto_3

    :cond_8
    if-lez p4, :cond_a

    .line 916
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_3

    .line 925
    :cond_9
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_a
    move-object v0, v1

    goto :goto_3

    .line 2931
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 8

    .prologue
    .line 860
    if-nez p2, :cond_1

    .line 861
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    if-eqz p3, :cond_2

    .line 866
    iget v0, p0, Lcom/androidquery/b/d;->r:F

    iget v1, p0, Lcom/androidquery/b/d;->u:F

    invoke-static {p1, p2, v0, v1}, Lcom/androidquery/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 870
    :cond_2
    iget-object v0, p0, Lcom/androidquery/b/d;->a:Lcom/androidquery/b/c;

    if-eqz v0, :cond_0

    .line 871
    iget-object v2, p0, Lcom/androidquery/b/d;->q:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/androidquery/b/d;->o:I

    iget v4, p0, Lcom/androidquery/b/d;->p:I

    iget v5, p0, Lcom/androidquery/b/d;->r:F

    iget v6, p0, Lcom/androidquery/b/d;->u:F

    iget-object v0, p0, Lcom/androidquery/b/d;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0}, Lcom/androidquery/b/c;->j()I

    move-result v7

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lcom/androidquery/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    goto :goto_0
.end method

.method private static a(Lcom/androidquery/b/d;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/b/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 589
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    const v0, 0x40ff0001

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2605
    invoke-direct {p0, p2, p3, v1}, Lcom/androidquery/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 601
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/androidquery/b/d;->c(Z)V

    goto :goto_0

    .line 596
    :cond_3
    invoke-direct {p0, p2, p3, v1}, Lcom/androidquery/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/b/c;)V
    .locals 4

    .prologue
    .line 559
    iget-object v0, p0, Lcom/androidquery/b/d;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 560
    sget-object v1, Lcom/androidquery/b/d;->l:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    .line 563
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 564
    :cond_0
    invoke-static {p0, p1, v0, p2, p3}, Lcom/androidquery/b/d;->a(Lcom/androidquery/b/d;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/b/c;)V

    .line 567
    :cond_1
    if-eqz v1, :cond_2

    .line 569
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 571
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 579
    :cond_2
    return-void

    .line 571
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    .line 572
    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/b/d;

    .line 573
    iput-object p3, v0, Lcom/androidquery/b/d;->a:Lcom/androidquery/b/c;

    .line 574
    invoke-static {v0, p1, v2, p2, p3}, Lcom/androidquery/b/d;->a(Lcom/androidquery/b/d;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/b/c;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 1039
    sget-object v0, Lcom/androidquery/b/d;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 1041
    if-nez v0, :cond_1

    .line 1043
    sget-object v0, Lcom/androidquery/b/d;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 1046
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v1, Lcom/androidquery/b/d;->l:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    :goto_0
    return-void

    .line 1050
    :cond_0
    sget-object v0, Lcom/androidquery/b/d;->l:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1055
    :cond_1
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 769
    if-lez p1, :cond_1

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    :goto_0
    if-lez p2, :cond_0

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 817
    iget v1, p0, Lcom/androidquery/b/d;->n:I

    iget v2, p0, Lcom/androidquery/b/d;->s:I

    iget-boolean v0, p0, Lcom/androidquery/b/d;->v:Z

    .line 2782
    if-eqz p2, :cond_1

    .line 2784
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    .line 2788
    if-eqz v0, :cond_2

    .line 2789
    invoke-static {}, Lcom/androidquery/b/d;->f()Ljava/util/Map;

    move-result-object v0

    .line 2796
    :goto_0
    if-gtz v1, :cond_0

    if-lez v2, :cond_4

    .line 2798
    :cond_0
    invoke-static {p1, v1, v2}, Lcom/androidquery/b/d;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 2799
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2802
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2803
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2806
    :cond_1
    :goto_1
    return-void

    .line 2790
    :cond_2
    sget v0, Lcom/androidquery/b/d;->e:I

    if-gt v3, v0, :cond_3

    .line 2791
    invoke-static {}, Lcom/androidquery/b/d;->e()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 2793
    :cond_3
    invoke-static {}, Lcom/androidquery/b/d;->d()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 2807
    :cond_4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 713
    iget-boolean v0, p0, Lcom/androidquery/b/d;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 714
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/androidquery/b/d;->n:I

    iget v1, p0, Lcom/androidquery/b/d;->s:I

    invoke-static {p1, v0, v1}, Lcom/androidquery/b/d;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static d()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    sget-object v0, Lcom/androidquery/b/d;->j:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/b/d;->d:I

    sget v2, Lcom/androidquery/b/d;->f:I

    sget v3, Lcom/androidquery/b/d;->g:I

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/b/d;->j:Ljava/util/Map;

    .line 692
    :cond_0
    sget-object v0, Lcom/androidquery/b/d;->j:Ljava/util/Map;

    return-object v0
.end method

.method private static e()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    sget-object v0, Lcom/androidquery/b/d;->i:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 698
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/b/d;->c:I

    sget v2, Lcom/androidquery/b/d;->e:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/b/d;->i:Ljava/util/Map;

    .line 700
    :cond_0
    sget-object v0, Lcom/androidquery/b/d;->i:Ljava/util/Map;

    return-object v0
.end method

.method private static f()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    sget-object v0, Lcom/androidquery/b/d;->k:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    const/16 v1, 0x64

    sget v2, Lcom/androidquery/b/d;->f:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/b/d;->k:Ljava/util/Map;

    .line 707
    :cond_0
    sget-object v0, Lcom/androidquery/b/d;->k:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 453
    invoke-super {p0, p1, p2}, Lcom/androidquery/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/b/c;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1
    .line 6459
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/androidquery/b/d;->a(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1
    return-object v0
.end method

.method public final synthetic a(Ljava/lang/String;[BLcom/androidquery/b/c;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1
    .line 5469
    invoke-virtual {p3}, Lcom/androidquery/b/c;->i()Ljava/io/File;

    move-result-object v2

    .line 5470
    if-eqz v2, :cond_8

    .line 5471
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 5474
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/androidquery/b/d;->a(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5476
    if-nez v0, :cond_7

    .line 5478
    iget v3, p0, Lcom/androidquery/b/d;->o:I

    if-lez v3, :cond_3

    .line 5512
    iget-object v0, p0, Lcom/androidquery/b/d;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5513
    if-eqz v0, :cond_0

    .line 5515
    iget v1, p0, Lcom/androidquery/b/d;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 5516
    invoke-direct {p0, v3}, Lcom/androidquery/b/d;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5518
    if-nez v1, :cond_0

    .line 5519
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/androidquery/b/d;->o:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5521
    if-eqz v1, :cond_0

    .line 5522
    invoke-direct {p0, v3, v1}, Lcom/androidquery/b/d;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 5486
    :cond_0
    :goto_1
    invoke-virtual {p3}, Lcom/androidquery/b/c;->f()I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_1

    .line 5487
    iput-boolean v4, p0, Lcom/androidquery/b/d;->v:Z

    .line 5492
    :cond_1
    invoke-virtual {p3}, Lcom/androidquery/b/c;->j()I

    move-result v0

    if-ne v0, v4, :cond_2

    if-eqz v2, :cond_2

    .line 5493
    const-string v0, "invalid bm from net"

    invoke-static {v0}, Lcom/androidquery/util/a;->a(Ljava/lang/Object;)V

    .line 5494
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1
    :cond_2
    :goto_2
    return-object v1

    .line 5480
    :cond_3
    iget v1, p0, Lcom/androidquery/b/d;->o:I

    const/4 v3, -0x2

    if-eq v1, v3, :cond_4

    iget v1, p0, Lcom/androidquery/b/d;->o:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    .line 5481
    :cond_4
    sget-object v1, Lcom/androidquery/b/d;->x:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 5482
    :cond_5
    iget v1, p0, Lcom/androidquery/b/d;->o:I

    const/4 v3, -0x3

    if-ne v1, v3, :cond_6

    .line 5483
    iget-object v1, p0, Lcom/androidquery/b/d;->q:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const v4, 0x40ff0001

    const/4 v3, 0x1

    .line 999
    invoke-virtual {p0}, Lcom/androidquery/b/d;->b()Ljava/lang/String;

    move-result-object v1

    .line 1001
    iget-object v0, p0, Lcom/androidquery/b/d;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1003
    if-nez v1, :cond_0

    .line 1004
    invoke-virtual {p0, v2}, Lcom/androidquery/b/d;->c(Z)V

    .line 1005
    invoke-direct {p0, v0, v5, v2}, Lcom/androidquery/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 1029
    :goto_0
    return-void

    .line 1009
    :cond_0
    invoke-direct {p0, v1}, Lcom/androidquery/b/d;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1010
    if-eqz v2, :cond_1

    .line 1011
    invoke-virtual {v0, v4, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1012
    new-instance v0, Lcom/androidquery/b/c;

    invoke-direct {v0}, Lcom/androidquery/b/c;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/androidquery/b/c;->a(I)Lcom/androidquery/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/b/c;->a()Lcom/androidquery/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/b/d;->a:Lcom/androidquery/b/c;

    .line 1013
    iget-object v0, p0, Lcom/androidquery/b/d;->a:Lcom/androidquery/b/c;

    invoke-direct {p0, v1, v2, v0}, Lcom/androidquery/b/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/b/c;)V

    goto :goto_0

    .line 4841
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/androidquery/b/d;->q:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 4843
    :cond_2
    invoke-virtual {v0, v4, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 4845
    iget-object v2, p0, Lcom/androidquery/b/d;->q:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androidquery/b/d;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4846
    iget-object v2, p0, Lcom/androidquery/b/d;->q:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v2, v3}, Lcom/androidquery/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 1020
    :cond_3
    :goto_1
    sget-object v2, Lcom/androidquery/b/d;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1021
    invoke-direct {p0, v1, v0}, Lcom/androidquery/b/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1022
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/androidquery/b/a;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 4849
    :cond_4
    invoke-direct {p0, v0, v5, v3}, Lcom/androidquery/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    .line 1024
    :cond_5
    invoke-virtual {p0, v3}, Lcom/androidquery/b/d;->c(Z)V

    .line 1025
    invoke-direct {p0, v1, v0}, Lcom/androidquery/b/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2}, Lcom/androidquery/b/d;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/b/c;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, p3}, Lcom/androidquery/b/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/b/c;)V

    return-void
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x1

    return v0
.end method

.method protected final synthetic b(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/b/c;)V
    .locals 1

    .prologue
    .line 1
    .line 5583
    sget-object v0, Lcom/androidquery/b/d;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method

.method protected final synthetic c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/androidquery/b/d;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
