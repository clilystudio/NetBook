.class public Lcom/ushaqi/zhuishushenqi/widget/NicknameEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/aj;

    invoke-direct {v1, p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/aj;-><init>(Lcom/ushaqi/zhuishushenqi/widget/NicknameEditText;B)V

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/NicknameEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 22
    return-void
.end method
