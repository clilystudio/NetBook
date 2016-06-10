.class final Lcom/ushaqi/zhuishushenqi/widget/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/NicknameEditText;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/NicknameEditText;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/aj;->a:Lcom/ushaqi/zhuishushenqi/widget/NicknameEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/NicknameEditText;B)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/aj;-><init>(Lcom/ushaqi/zhuishushenqi/widget/NicknameEditText;)V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 27
    .line 1031
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/aj;->a:Lcom/ushaqi/zhuishushenqi/widget/NicknameEditText;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/widget/NicknameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v0

    .line 1033
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1034
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v1, v2

    .line 1033
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1034
    :cond_0
    const/4 v2, 0x2

    goto :goto_1

    .line 27
    :cond_1
    const/16 v0, 0x1c

    if-lt v1, v0, :cond_2

    const-string p1, ""

    :cond_2
    return-object p1
.end method
