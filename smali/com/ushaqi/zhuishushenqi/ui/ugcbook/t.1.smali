.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/t;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/t;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Z)V

    .line 141
    return v1
.end method
