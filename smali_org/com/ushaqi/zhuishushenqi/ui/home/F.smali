.class final Lcom/ushaqi/zhuishushenqi/ui/home/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/E;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/E;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/F;->a:Lcom/ushaqi/zhuishushenqi/ui/home/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/F;->a:Lcom/ushaqi/zhuishushenqi/ui/home/E;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/home/E;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    .line 626
    return-void
.end method
