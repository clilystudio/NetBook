.class final Lcom/ushaqi/zhuishushenqi/util/adutil/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/util/adutil/b;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/adutil/b;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/c;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/c;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/b;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/c;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/b;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->a:Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;)V

    .line 137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/c;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/b;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->e()V

    .line 138
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/c;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/b;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->a:Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/adutil/d;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/d;-><init>(Lcom/ushaqi/zhuishushenqi/util/adutil/c;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method
