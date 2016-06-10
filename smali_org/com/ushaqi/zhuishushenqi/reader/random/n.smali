.class final Lcom/ushaqi/zhuishushenqi/reader/random/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/n;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 620
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 621
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/n;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->t(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    .line 622
    return-void
.end method
