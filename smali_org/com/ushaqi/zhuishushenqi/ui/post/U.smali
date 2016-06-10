.class final Lcom/ushaqi/zhuishushenqi/ui/post/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/U;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/U;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/U;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/U;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/view/View;)V

    .line 411
    return-void
.end method
