.class public Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Landroid/os/Handler;

.field private d:Lcom/ushaqi/zhuishushenqi/ui/cl;

.field private e:Z

.field private f:Z

.field private g:Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->b:I

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->c:Landroid/os/Handler;

    .line 58
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->e:Z

    .line 63
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->f:Z

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    .line 2352
    if-eqz p1, :cond_0

    .line 2353
    const-string v0, "\u63a8\u5e7f"

    invoke-static {p0, v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2354
    const-string v1, "from_splash"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2355
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 2356
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->finish()V

    .line 46
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;Z)Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->e:Z

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a(J)V

    .line 143
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 194
    .line 1781
    const-string v0, "splash_ad_third_enable"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1782
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 194
    if-eqz v0, :cond_2

    .line 2207
    const v0, 0x7f0c046b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2208
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a(J)V

    .line 2209
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;)V

    .line 2211
    const-string v1, "com.qq.e.ads.nativ.NativeAD"

    invoke-static {v1}, Landroid/support/design/widget/am;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2212
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/adutil/l;

    invoke-direct {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/l;-><init>(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)V

    .line 2213
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->g:Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/a;->a(Landroid/view/View;)Z

    .line 201
    :goto_0
    return-void

    .line 2216
    :cond_0
    const-string v1, "com.baidu.mobads.SplashAd"

    invoke-static {v1}, Landroid/support/design/widget/am;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2217
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/adutil/g;

    invoke-direct {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/g;-><init>(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)V

    .line 2218
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->g:Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/a;->a(Landroid/view/View;)Z

    goto :goto_0

    .line 2220
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->b()V

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->b()V

    goto :goto_0
.end method

.method private h()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 238
    const/4 v0, 0x1

    .line 239
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/e;

    move-result-object v3

    .line 240
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/util/e;->a()Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;

    move-result-object v4

    .line 241
    if-eqz v4, :cond_0

    .line 243
    :try_start_0
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;

    sget-object v5, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Splash:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    invoke-direct {v1, p0, v5}, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;)V

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;->getSplashRecord()Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->splashId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 2257
    :goto_0
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->b:I

    .line 2258
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2259
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;->getSplashRecord()Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    move-result-object v0

    iget-object v6, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->link:Ljava/lang/String;

    .line 2260
    const v0, 0x7f0c018f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2261
    const v0, 0x7f0c046b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2262
    const v0, 0x7f0c0190

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2264
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2265
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/cj;

    invoke-direct {v2, p0, v4, v6}, Lcom/ushaqi/zhuishushenqi/ui/cj;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2284
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->i()V

    .line 2285
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;->getSplashRecord()Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->splashId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 2286
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->f()V

    .line 252
    :goto_1
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/util/e;->b()V

    .line 253
    return v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 246
    goto :goto_0

    :cond_0
    move v1, v2

    .line 250
    goto :goto_1
.end method

.method private i()V
    .locals 2

    .prologue
    .line 295
    const v0, 0x7f0c0191

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 296
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ck;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ck;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->d:Lcom/ushaqi/zhuishushenqi/ui/cl;

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a:Ljava/lang/String;

    const-string v1, "cancelAutoClose  "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->d:Lcom/ushaqi/zhuishushenqi/ui/cl;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/cl;->a()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->d:Lcom/ushaqi/zhuishushenqi/ui/cl;

    .line 168
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 149
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/cl;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/cl;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;)V

    .line 150
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->c:Landroid/os/Handler;

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/ci;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/ci;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;Lcom/ushaqi/zhuishushenqi/ui/cl;J)V

    cmp-long v5, p1, v0

    if-gtz v5, :cond_0

    move-wide p1, v0

    :cond_0
    invoke-virtual {v3, v4, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->d:Lcom/ushaqi/zhuishushenqi/ui/cl;

    .line 157
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 225
    const v0, 0x7f0c046b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 227
    invoke-static {p0}, Landroid/support/design/widget/am;->o(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->b:I

    .line 232
    :goto_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->f()V

    .line 233
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->b:I

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->i()V

    .line 291
    const v0, 0x7f0c018f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->e:Z

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-static {}, Landroid/support/design/widget/am;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/support/design/widget/am;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 316
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 332
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->finish()V

    goto :goto_0

    .line 318
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 321
    if-eqz v2, :cond_1

    .line 322
    const-string v3, "text/plain"

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 324
    const-string v2, "file_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    new-instance v2, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/ushaqi/zhuishushenqi/db/BookFile;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;->add(Lcom/ushaqi/zhuishushenqi/db/BookFile;)Z

    goto :goto_1

    .line 327
    :cond_3
    const-string v1, "file_name"

    const-string v2, "nonsupport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f030165

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/view/View;)V

    .line 79
    invoke-static {p0}, Lcom/activeandroid/ActiveAndroid;->initialize(Landroid/content/Context;)V

    .line 81
    const v0, 0x7f0c018f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->g:Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;

    .line 1172
    invoke-static {p0}, Landroid/support/design/widget/am;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1173
    const-string v0, "rate_zssq_splash_ad"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->v(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    .line 1174
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 1176
    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 1178
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1182
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->g()V

    .line 84
    :cond_1
    :goto_0
    invoke-static {}, Landroid/support/design/widget/am;->g()Z

    move-result v0

    .line 1563
    if-eqz v0, :cond_3

    .line 1564
    const-string v0, "user_register"

    const-string v1, "YES"

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 1185
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->b()V

    goto :goto_0

    .line 1566
    :cond_3
    const-string v0, "user_register"

    const-string v1, "NO"

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->e:Z

    .line 364
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    invoke-static {p0}, Lcom/umeng/a/b;->a(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 337
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 338
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->f:Z

    if-eqz v0, :cond_1

    .line 2344
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->f:Z

    if-eqz v0, :cond_2

    .line 2345
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->d()V

    :cond_1
    :goto_0
    return-void

    .line 2347
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->f:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    invoke-static {p0}, Lcom/umeng/a/b;->b(Landroid/content/Context;)V

    .line 93
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->a()V

    .line 94
    invoke-static {}, Landroid/support/design/widget/am;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 97
    const-string v1, "KEY_OPEN_TIME"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 98
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 99
    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v2, "male"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    const-string v1, "user_gender"

    const-string v2, "male"

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "user_gender"

    const-string v2, "male"

    invoke-static {p0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_2
    :goto_1
    const-string v1, "KEY_OPEN_TIME"

    invoke-static {p0, v1, v0}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 105
    :cond_3
    const-string v2, "female"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    const-string v1, "user_gender"

    const-string v2, "female"

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "user_gender"

    const-string v2, "female"

    invoke-static {p0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
