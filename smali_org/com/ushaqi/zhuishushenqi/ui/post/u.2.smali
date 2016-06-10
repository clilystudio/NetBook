.class final Lcom/ushaqi/zhuishushenqi/ui/post/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/aa;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/u;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/u;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/u;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)V

    .line 46
    :cond_0
    return-void
.end method
