.class final Lcom/ushaqi/zhuishushenqi/ui/post/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/aa;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/o;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/o;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/o;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;)V

    .line 54
    :cond_0
    return-void
.end method
