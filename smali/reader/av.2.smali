.class final Lcom/ushaqi/zhuishushenqi/reader/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/db;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/av;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/av;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/av;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 487
    return-void
.end method
