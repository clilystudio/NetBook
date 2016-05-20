.class final Lcom/ushaqi/zhuishushenqi/ui/post/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/aa;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/ax;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/ax;

    move-result-object v0

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ax;->a()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/ax;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/ax;

    move-result-object v0

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ax;->a()V

    .line 66
    :cond_1
    return-void
.end method
