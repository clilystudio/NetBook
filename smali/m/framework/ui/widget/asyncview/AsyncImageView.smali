.class public Lm/framework/ui/widget/asyncview/AsyncImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lm/framework/ui/widget/asyncview/AsyncView;
.implements Lm/framework/ui/widget/asyncview/BitmapCallback;


# static fields
.field public static final DEFAULT_TRANSPARENT:I = 0x106000d

.field private static DEFAULT_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap; = null

.field private static final MSG_IMG_GOT:I = 0x1

.field private static cacheDir:Ljava/lang/String;

.field private static final rnd:Ljava/util/Random;


# instance fields
.field private defaultRes:I

.field private onImageGotListener:Lm/framework/ui/widget/asyncview/OnImageGotListener;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lm/framework/ui/widget/asyncview/AsyncImageView;->rnd:Ljava/util/Random;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lm/framework/ui/widget/asyncview/AsyncImageView;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lm/framework/ui/widget/asyncview/AsyncImageView;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1}, Lm/framework/ui/widget/asyncview/AsyncImageView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private getDefaultBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 85
    packed-switch p1, :pswitch_data_0

    .line 94
    invoke-virtual {p0}, Lm/framework/ui/widget/asyncview/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    .line 87
    :pswitch_0
    sget-object v0, Lm/framework/ui/widget/asyncview/AsyncImageView;->DEFAULT_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lm/framework/ui/widget/asyncview/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    .line 88
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lm/framework/ui/widget/asyncview/AsyncImageView;->DEFAULT_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap;

    .line 91
    :cond_0
    sget-object v0, Lm/framework/ui/widget/asyncview/AsyncImageView;->DEFAULT_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x106000d
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lm/framework/utils/UIHandler;->prepare()V

    .line 44
    sget-object v0, Lm/framework/ui/widget/asyncview/AsyncImageView;->cacheDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lm/framework/ui/widget/asyncview/AsyncImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "images"

    invoke-static {v0, v1}, Lm/framework/utils/Utils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lm/framework/ui/widget/asyncview/AsyncImageView;->cacheDir:Ljava/lang/String;

    .line 47
    :cond_0
    sget-object v0, Lm/framework/ui/widget/asyncview/AsyncImageView;->cacheDir:Ljava/lang/String;

    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->prepare(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;->INSTANCE:Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/asyncview/AsyncImageView;->setOnImageGotListener(Lm/framework/ui/widget/asyncview/OnImageGotListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm/framework/ui/widget/asyncview/AsyncImageView;->execute(Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public execute(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 65
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->url:Ljava/lang/String;

    .line 66
    iput p2, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->defaultRes:I

    .line 67
    invoke-static {p1}, Lm/framework/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, p2}, Lm/framework/ui/widget/asyncview/AsyncImageView;->setImageResource(I)V

    .line 82
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    invoke-virtual {p0, v0}, Lm/framework/ui/widget/asyncview/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 78
    :cond_1
    if-lez p2, :cond_2

    .line 79
    invoke-direct {p0, p2}, Lm/framework/ui/widget/asyncview/AsyncImageView;->getDefaultBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/asyncview/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    :cond_2
    invoke-static {p1, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->process(Ljava/lang/String;Lm/framework/ui/widget/asyncview/BitmapCallback;)V

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->url:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 114
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v3

    .line 115
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v2

    .line 116
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/asyncview/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    :cond_0
    :goto_0
    return v3

    .line 120
    :cond_1
    iget v0, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->defaultRes:I

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/asyncview/AsyncImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 100
    .line 101
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->onImageGotListener:Lm/framework/ui/widget/asyncview/OnImageGotListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->onImageGotListener:Lm/framework/ui/widget/asyncview/OnImageGotListener;

    invoke-interface {v0, p0, p2, p1}, Lm/framework/ui/widget/asyncview/OnImageGotListener;->onImageGot(Lm/framework/ui/widget/asyncview/AsyncView;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 105
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 106
    iput v3, v0, Landroid/os/Message;->what:I

    .line 107
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    sget-object v1, Lm/framework/ui/widget/asyncview/AsyncImageView;->rnd:Ljava/util/Random;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 109
    int-to-long v2, v1

    invoke-static {v0, v2, v3, p0}, Lm/framework/utils/UIHandler;->sendMessageDelayed(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z

    .line 110
    return-void
.end method

.method public setOnImageGotListener(Lm/framework/ui/widget/asyncview/OnImageGotListener;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->onImageGotListener:Lm/framework/ui/widget/asyncview/OnImageGotListener;

    .line 53
    return-void
.end method
