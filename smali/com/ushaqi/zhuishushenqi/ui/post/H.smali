.class final Lcom/ushaqi/zhuishushenqi/ui/post/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/H;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/H;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;)V

    .line 112
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/H;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->finish()V

    .line 113
    return-void
.end method
