.class final Lcom/ushaqi/zhuishushenqi/adapter/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;I)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/q;->b:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/q;->b:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->a(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/q;->b:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->b(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;)[Z

    move-result-object v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/q;->a:I

    aput-boolean p2, v0, v1

    .line 238
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/q;->b:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/q;->a:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->a(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;I)V

    goto :goto_0
.end method
