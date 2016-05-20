.class final Lcom/ushaqi/zhuishushenqi/reader/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/reader/o;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/v;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/v;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;Z)V

    .line 455
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/p;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/v;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/p;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/p;->a()V

    .line 456
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/w;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/w;-><init>(Lcom/ushaqi/zhuishushenqi/reader/v;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    return-void
.end method
