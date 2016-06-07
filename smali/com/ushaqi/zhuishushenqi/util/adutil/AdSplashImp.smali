.class public final Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

.field private b:Ljava/lang/reflect/InvocationHandler;

.field private c:Z

.field private d:Lcom/ushaqi/zhuishushenqi/util/adutil/l;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->c:Z

    .line 37
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    return-object v0
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->b:Ljava/lang/reflect/InvocationHandler;

    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/util/adutil/g;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;[Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->b:Ljava/lang/reflect/InvocationHandler;

    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;[Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/adutil/f;->a:[I

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 99
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-static {v1, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void

    .line 90
    :pswitch_0
    const/4 v0, 0x0

    aget-object v0, p2, v0

    goto :goto_0

    .line 93
    :pswitch_1
    const/4 v0, 0x1

    aget-object v0, p2, v0

    goto :goto_0

    .line 96
    :pswitch_2
    const/4 v0, 0x2

    aget-object v0, p2, v0

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;)V
    .locals 14

    .prologue
    const-wide/16 v0, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 22
    .line 2162
    invoke-virtual {p1, v4}, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->setIsShowConfirm(Z)V

    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2163
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2164
    const/4 v10, 0x1

    move-wide v6, v0

    move-wide v8, v0

    move v11, v5

    move v12, v5

    move v13, v4

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 22
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)Lcom/ushaqi/zhuishushenqi/util/adutil/l;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->d:Lcom/ushaqi/zhuishushenqi/util/adutil/l;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->c()V

    .line 42
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/util/adutil/l;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->d:Lcom/ushaqi/zhuishushenqi/util/adutil/l;

    .line 177
    return-void
.end method

.method public final a(Ljava/lang/reflect/InvocationHandler;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->b:Ljava/lang/reflect/InvocationHandler;

    .line 169
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->c:Z

    .line 173
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 46
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;->PRESENT:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;)V

    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a()V

    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a(J)V

    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    const-string v1, "ad_baidu_confirm"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    .line 1306
    const v1, 0x7f0c018f

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;

    .line 1108
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->setIsShowConfirm(Z)V

    .line 1109
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/adutil/b;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/b;-><init>(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->setSplashAdContainerClickListener(Lcom/ushaqi/zhuishushenqi/widget/f;)V

    .line 53
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a()V

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->b()V

    .line 59
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;->CLICK:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;)V

    .line 69
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;->DOWNLOAD:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp$EventType;)V

    .line 74
    return-void
.end method
