.class final Lcom/ushaqi/zhuishushenqi/adapter/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/content/Intent;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/adapter/G;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/K;->b:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/K;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/K;->b:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/K;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 351
    return-void
.end method
