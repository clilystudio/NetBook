.class final Lcom/ushaqi/zhuishushenqi/ui/post/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/aa;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/D;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/D;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/D;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)V

    .line 59
    :cond_0
    return-void
.end method
