.class final Lcom/ushaqi/zhuishushenqi/reader/aW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aW;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1956
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1957
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aW;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->finish()V

    .line 1958
    return-void
.end method
