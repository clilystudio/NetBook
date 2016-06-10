.class final Lcom/ushaqi/zhuishushenqi/ui/post/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/C;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 129
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/C;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;)V

    .line 131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/C;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->finish()V

    .line 132
    return-void
.end method
