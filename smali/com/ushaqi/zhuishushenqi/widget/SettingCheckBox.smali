.class public Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;
.super Landroid/support/v7/widget/SwitchCompat;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->SettingCheckBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;->a:Ljava/lang/String;

    .line 24
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;->b:Z

    .line 25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0}, Landroid/support/v7/widget/SwitchCompat;->onFinishInflate()V

    .line 32
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;->b:Z

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;->setChecked(Z)V

    .line 35
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/az;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/az;-><init>(Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 46
    return-void
.end method
