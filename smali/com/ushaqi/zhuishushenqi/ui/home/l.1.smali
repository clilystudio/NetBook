.class final Lcom/ushaqi/zhuishushenqi/ui/home/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/l;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/m;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/l;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/m;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/m;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    return-void
.end method
