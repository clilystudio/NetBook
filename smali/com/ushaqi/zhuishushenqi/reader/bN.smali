.class final Lcom/ushaqi/zhuishushenqi/reader/bN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/SwitchCompat;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;Landroid/support/v7/widget/SwitchCompat;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bN;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/bN;->a:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bN;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auto_buy_chapter"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/I;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bN;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bN;->a:Landroid/support/v7/widget/SwitchCompat;

    invoke-static {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;Landroid/view/View;Z)V

    .line 132
    return-void
.end method
