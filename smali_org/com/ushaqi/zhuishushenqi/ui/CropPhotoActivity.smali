.class public Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/view/CropView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;)V
    .locals 4

    .prologue
    const/16 v2, 0xc8

    .line 20
    .line 1071
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;->a:Lcom/ushaqi/zhuishushenqi/view/CropView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1072
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 1073
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 1075
    :goto_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1076
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1084
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1085
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1086
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;->setResult(ILandroid/content/Intent;)V

    .line 1078
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;->finish()V

    .line 20
    return-void

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v4, 0x800

    const/high16 v2, 0x45000000

    .line 27
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;->setContentView(I)V

    .line 29
    const-string v0, "\u622a\u53d6\u5934\u50cf"

    const-string v1, "\u4f7f\u7528"

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/aY;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/aY;-><init>(Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 36
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 38
    const/4 v0, 0x0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1053
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v1, v4, :cond_2

    .line 1055
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1056
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1057
    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    .line 1059
    div-float v1, v3, v1

    mul-float/2addr v1, v2

    .line 1064
    :goto_1
    float-to-int v2, v2

    float-to-int v1, v1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 48
    :goto_2
    const v0, 0x7f0c00fe

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/view/CropView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;->a:Lcom/ushaqi/zhuishushenqi/view/CropView;

    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;->a:Lcom/ushaqi/zhuishushenqi/view/CropView;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/view/CropView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    return-void

    .line 42
    :catch_0
    move-exception v1

    .line 43
    :goto_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    throw v0

    .line 1062
    :cond_1
    div-float/2addr v1, v3

    mul-float/2addr v1, v2

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 1066
    goto :goto_2

    .line 42
    :catch_1
    move-exception v1

    goto :goto_3
.end method
