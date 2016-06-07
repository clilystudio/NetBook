.class final Lcom/ushaqi/zhuishushenqi/ui/post/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 193
    return-void
.end method
