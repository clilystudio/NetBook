.class public Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private splashRecord:Lcom/ushaqi/zhuishushenqi/db/SplashRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSplashRecord()Lcom/ushaqi/zhuishushenqi/db/SplashRecord;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;->splashRecord:Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;->bitmap:Landroid/graphics/Bitmap;

    .line 32
    return-void
.end method

.method public setSplashRecord(Lcom/ushaqi/zhuishushenqi/db/SplashRecord;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;->splashRecord:Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    .line 24
    return-void
.end method
