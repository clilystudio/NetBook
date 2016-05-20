.class final Lcom/ushaqi/zhuishushenqi/util/adutil/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/f;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;

.field final synthetic b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->a:Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->d()V

    .line 114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a()V

    .line 116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->b(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    move-result-object v0

    const v2, 0x7f0500a7

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Z)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    .line 1046
    iput-object v0, v1, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 124
    const-string v0, "\u4e0b\u8f7d"

    .line 2036
    iput-object v0, v1, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 124
    const-string v0, "\u53d6\u6d88"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/adutil/e;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/e;-><init>(Lcom/ushaqi/zhuishushenqi/util/adutil/b;)V

    .line 125
    invoke-virtual {v1, v0, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/adutil/c;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/c;-><init>(Lcom/ushaqi/zhuishushenqi/util/adutil/b;)V

    .line 131
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 150
    :goto_1
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    move-result-object v0

    const v2, 0x7f0500a6

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->d()V

    .line 148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->c(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)Lcom/ushaqi/zhuishushenqi/util/adutil/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->a()V

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->d()V

    .line 155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->e()V

    .line 156
    return-void
.end method
