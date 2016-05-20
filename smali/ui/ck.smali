.class final Lcom/ushaqi/zhuishushenqi/ui/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ck;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ck;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->d()V

    .line 300
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ck;->a:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    const-string v1, "SKIP"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->o(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    return-void
.end method
