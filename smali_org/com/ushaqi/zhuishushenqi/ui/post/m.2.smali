.class final Lcom/ushaqi/zhuishushenqi/ui/post/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/m;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 204
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/m;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->finish()V

    .line 205
    return-void
.end method
