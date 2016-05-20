.class final Lcom/ushaqi/zhuishushenqi/ui/post/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/T;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/T;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;I)V

    .line 192
    return-void
.end method
