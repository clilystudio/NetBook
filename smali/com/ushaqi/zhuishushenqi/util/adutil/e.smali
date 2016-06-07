.class final Lcom/ushaqi/zhuishushenqi/util/adutil/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/adutil/b;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/adutil/b;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/e;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/e;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/b;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->d()V

    .line 130
    return-void
.end method
