.class final Lcom/ushaqi/zhuishushenqi/ui/home/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/L;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/L;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/M;->a:Lcom/ushaqi/zhuishushenqi/ui/home/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/M;->a:Lcom/ushaqi/zhuishushenqi/ui/home/L;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/home/L;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)V

    .line 107
    return-void
.end method
