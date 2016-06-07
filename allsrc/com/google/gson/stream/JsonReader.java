package com.google.gson.stream;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class JsonReader
  implements Closeable
{
  private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
  private static final char[] NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
  private static final int NUMBER_CHAR_DECIMAL = 3;
  private static final int NUMBER_CHAR_DIGIT = 2;
  private static final int NUMBER_CHAR_EXP_DIGIT = 7;
  private static final int NUMBER_CHAR_EXP_E = 5;
  private static final int NUMBER_CHAR_EXP_SIGN = 6;
  private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
  private static final int NUMBER_CHAR_NONE = 0;
  private static final int NUMBER_CHAR_SIGN = 1;
  private static final int PEEKED_BEGIN_ARRAY = 3;
  private static final int PEEKED_BEGIN_OBJECT = 1;
  private static final int PEEKED_BUFFERED = 11;
  private static final int PEEKED_DOUBLE_QUOTED = 9;
  private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
  private static final int PEEKED_END_ARRAY = 4;
  private static final int PEEKED_END_OBJECT = 2;
  private static final int PEEKED_EOF = 17;
  private static final int PEEKED_FALSE = 6;
  private static final int PEEKED_LONG = 15;
  private static final int PEEKED_NONE = 0;
  private static final int PEEKED_NULL = 7;
  private static final int PEEKED_NUMBER = 16;
  private static final int PEEKED_SINGLE_QUOTED = 8;
  private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
  private static final int PEEKED_TRUE = 5;
  private static final int PEEKED_UNQUOTED = 10;
  private static final int PEEKED_UNQUOTED_NAME = 14;
  private final char[] buffer = new char[1024];
  private final Reader in;
  private boolean lenient = false;
  private int limit = 0;
  private int lineNumber = 0;
  private int lineStart = 0;
  private int peeked = 0;
  private long peekedLong;
  private int peekedNumberLength;
  private String peekedString;
  private int pos = 0;
  private int[] stack = new int[32];
  private int stackSize = 0;

  static
  {
    com.google.gson.internal.JsonReaderInternalAccess.INSTANCE = new JsonReader.1();
  }

  public JsonReader(Reader paramReader)
  {
    int[] arrayOfInt = this.stack;
    int i = this.stackSize;
    this.stackSize = (i + 1);
    arrayOfInt[i] = 6;
    if (paramReader == null)
      throw new NullPointerException("in == null");
    this.in = paramReader;
  }

  private void checkLenient()
  {
    if (!this.lenient)
      throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
  }

  private void consumeNonExecutePrefix()
  {
    nextNonWhitespace(true);
    this.pos = (-1 + this.pos);
    if ((this.pos + NON_EXECUTE_PREFIX.length > this.limit) && (!fillBuffer(NON_EXECUTE_PREFIX.length)))
      return;
    for (int i = 0; ; i++)
    {
      if (i >= NON_EXECUTE_PREFIX.length)
        break label79;
      if (this.buffer[(i + this.pos)] != NON_EXECUTE_PREFIX[i])
        break;
    }
    label79: this.pos += NON_EXECUTE_PREFIX.length;
  }

  private int doPeek()
  {
    int i = this.stack[(-1 + this.stackSize)];
    int k;
    if (i == 1)
    {
      this.stack[(-1 + this.stackSize)] = 2;
      switch (nextNonWhitespace(true))
      {
      default:
        this.pos = (-1 + this.pos);
        if (this.stackSize == 1)
          checkLenient();
        k = peekKeyword();
        if (k == 0)
          break;
      case 93:
      case 44:
      case 59:
      case 39:
      case 34:
      case 91:
      case 123:
      }
    }
    do
    {
      return k;
      if (i == 2)
      {
        switch (nextNonWhitespace(true))
        {
        case 44:
        default:
          throw syntaxError("Unterminated array");
        case 93:
          this.peeked = 4;
          return 4;
        case 59:
        }
        checkLenient();
        break;
      }
      if ((i == 3) || (i == 5))
      {
        this.stack[(-1 + this.stackSize)] = 4;
        if (i == 5)
          switch (nextNonWhitespace(true))
          {
          default:
            throw syntaxError("Unterminated object");
          case 125:
            this.peeked = 2;
            return 2;
          case 59:
            checkLenient();
          case 44:
          }
        int j = nextNonWhitespace(true);
        switch (j)
        {
        default:
          checkLenient();
          this.pos = (-1 + this.pos);
          if (!isLiteral((char)j))
            break;
          this.peeked = 14;
          return 14;
        case 34:
          this.peeked = 13;
          return 13;
        case 39:
          checkLenient();
          this.peeked = 12;
          return 12;
        case 125:
          if (i != 5)
          {
            this.peeked = 2;
            return 2;
          }
          throw syntaxError("Expected name");
        }
        throw syntaxError("Expected name");
      }
      if (i == 4)
      {
        this.stack[(-1 + this.stackSize)] = 5;
        switch (nextNonWhitespace(true))
        {
        case 58:
        case 59:
        case 60:
        default:
          throw syntaxError("Expected ':'");
        case 61:
        }
        checkLenient();
        if (((this.pos >= this.limit) && (!fillBuffer(1))) || (this.buffer[this.pos] != '>'))
          break;
        this.pos = (1 + this.pos);
        break;
      }
      if (i == 6)
      {
        if (this.lenient)
          consumeNonExecutePrefix();
        this.stack[(-1 + this.stackSize)] = 7;
        break;
      }
      if (i == 7)
      {
        if (nextNonWhitespace(false) == -1)
        {
          this.peeked = 17;
          return 17;
        }
        checkLenient();
        this.pos = (-1 + this.pos);
        break;
      }
      if (i != 8)
        break;
      throw new IllegalStateException("JsonReader is closed");
      if (i == 1)
      {
        this.peeked = 4;
        return 4;
      }
      if ((i == 1) || (i == 2))
      {
        checkLenient();
        this.pos = (-1 + this.pos);
        this.peeked = 7;
        return 7;
      }
      throw syntaxError("Unexpected value");
      checkLenient();
      this.peeked = 8;
      return 8;
      if (this.stackSize == 1)
        checkLenient();
      this.peeked = 9;
      return 9;
      this.peeked = 3;
      return 3;
      this.peeked = 1;
      return 1;
      k = peekNumber();
    }
    while (k != 0);
    if (!isLiteral(this.buffer[this.pos]))
      throw syntaxError("Expected value");
    checkLenient();
    this.peeked = 10;
    return 10;
  }

  private boolean fillBuffer(int paramInt)
  {
    char[] arrayOfChar = this.buffer;
    this.lineStart -= this.pos;
    if (this.limit != this.pos)
    {
      this.limit -= this.pos;
      System.arraycopy(arrayOfChar, this.pos, arrayOfChar, 0, this.limit);
    }
    while (true)
    {
      this.pos = 0;
      int j;
      while (true)
      {
        int i = this.in.read(arrayOfChar, this.limit, arrayOfChar.length - this.limit);
        j = 0;
        if (i == -1)
          break;
        this.limit = (i + this.limit);
        if ((this.lineNumber == 0) && (this.lineStart == 0) && (this.limit > 0) && (arrayOfChar[0] == 65279))
        {
          this.pos = (1 + this.pos);
          this.lineStart = (1 + this.lineStart);
          paramInt++;
        }
        if (this.limit < paramInt)
          continue;
        j = 1;
      }
      return j;
      this.limit = 0;
    }
  }

  private int getColumnNumber()
  {
    return 1 + (this.pos - this.lineStart);
  }

  private int getLineNumber()
  {
    return 1 + this.lineNumber;
  }

  private boolean isLiteral(char paramChar)
  {
    switch (paramChar)
    {
    default:
      return true;
    case '#':
    case '/':
    case ';':
    case '=':
    case '\\':
      checkLenient();
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
    case ',':
    case ':':
    case '[':
    case ']':
    case '{':
    case '}':
    }
    return false;
  }

  private int nextNonWhitespace(boolean paramBoolean)
  {
    char[] arrayOfChar = this.buffer;
    int i = this.pos;
    int j = this.limit;
    while (true)
    {
      int k;
      if (i == j)
      {
        this.pos = i;
        if (fillBuffer(1))
        {
          i = this.pos;
          j = this.limit;
        }
      }
      else
      {
        k = i + 1;
        int m = arrayOfChar[i];
        if (m == 10)
        {
          this.lineNumber = (1 + this.lineNumber);
          this.lineStart = k;
          i = k;
          continue;
        }
        if ((m == 32) || (m == 13) || (m == 9))
          break label358;
        if (m == 47)
        {
          this.pos = k;
          if (k == j)
          {
            this.pos = (-1 + this.pos);
            boolean bool = fillBuffer(2);
            this.pos = (1 + this.pos);
            if (!bool)
              return m;
          }
          checkLenient();
          switch (arrayOfChar[this.pos])
          {
          default:
            return m;
          case '*':
            this.pos = (1 + this.pos);
            if (!skipTo("*/"))
              throw syntaxError("Unterminated comment");
            i = 2 + this.pos;
            j = this.limit;
            break;
          case '/':
            this.pos = (1 + this.pos);
            skipToEndOfLine();
            i = this.pos;
            j = this.limit;
            break;
          }
        }
        if (m == 35)
        {
          this.pos = k;
          checkLenient();
          skipToEndOfLine();
          i = this.pos;
          j = this.limit;
          continue;
        }
        this.pos = k;
        return m;
      }
      if (paramBoolean)
        throw new EOFException("End of input at line " + getLineNumber() + " column " + getColumnNumber());
      return -1;
      label358: i = k;
    }
  }

  private String nextQuotedValue(char paramChar)
  {
    char[] arrayOfChar = this.buffer;
    StringBuilder localStringBuilder = new StringBuilder();
    do
    {
      int i = this.pos;
      int j = this.limit;
      int k = i;
      while (k < j)
      {
        int m = k + 1;
        char c = arrayOfChar[k];
        if (c == paramChar)
        {
          this.pos = m;
          localStringBuilder.append(arrayOfChar, i, -1 + (m - i));
          return localStringBuilder.toString();
        }
        if (c == '\\')
        {
          this.pos = m;
          localStringBuilder.append(arrayOfChar, i, -1 + (m - i));
          localStringBuilder.append(readEscapeCharacter());
          i = this.pos;
          j = this.limit;
          k = i;
          continue;
        }
        if (c == '\n')
        {
          this.lineNumber = (1 + this.lineNumber);
          this.lineStart = m;
        }
        k = m;
      }
      localStringBuilder.append(arrayOfChar, i, k - i);
      this.pos = k;
    }
    while (fillBuffer(1));
    throw syntaxError("Unterminated string");
  }

  private String nextUnquotedValue()
  {
    StringBuilder localStringBuilder = null;
    int i = 0;
    while (true)
    {
      if (i + this.pos < this.limit)
        switch (this.buffer[(i + this.pos)])
        {
        default:
          i++;
          break;
        case '#':
        case '/':
        case ';':
        case '=':
        case '\\':
          checkLenient();
        case '\t':
        case '\n':
        case '\f':
        case '\r':
        case ' ':
        case ',':
        case ':':
        case '[':
        case ']':
        case '{':
        case '}':
          label178: if (localStringBuilder != null);
        }
      for (String str = new String(this.buffer, this.pos, i); ; str = localStringBuilder.toString())
      {
        this.pos = (i + this.pos);
        return str;
        if (i < this.buffer.length)
        {
          if (!fillBuffer(i + 1))
            break label178;
          break;
        }
        if (localStringBuilder == null)
          localStringBuilder = new StringBuilder();
        localStringBuilder.append(this.buffer, this.pos, i);
        this.pos = (i + this.pos);
        if (fillBuffer(1))
          break label307;
        i = 0;
        break label178;
        localStringBuilder.append(this.buffer, this.pos, i);
      }
      label307: i = 0;
    }
  }

  private int peekKeyword()
  {
    int i = this.buffer[this.pos];
    String str1;
    String str2;
    int j;
    int k;
    if ((i == 116) || (i == 84))
    {
      str1 = "true";
      str2 = "TRUE";
      j = 5;
      k = str1.length();
    }
    for (int m = 1; ; m++)
    {
      if (m >= k)
        break label176;
      if ((m + this.pos >= this.limit) && (!fillBuffer(m + 1)))
      {
        return 0;
        if ((i == 102) || (i == 70))
        {
          str1 = "false";
          str2 = "FALSE";
          j = 6;
          break;
        }
        if ((i == 110) || (i == 78))
        {
          str1 = "null";
          str2 = "NULL";
          j = 7;
          break;
        }
        return 0;
      }
      int n = this.buffer[(m + this.pos)];
      if ((n != str1.charAt(m)) && (n != str2.charAt(m)))
        return 0;
    }
    label176: if (((k + this.pos < this.limit) || (fillBuffer(k + 1))) && (isLiteral(this.buffer[(k + this.pos)])))
      return 0;
    this.pos = (k + this.pos);
    this.peeked = j;
    return j;
  }

  private int peekNumber()
  {
    char[] arrayOfChar = this.buffer;
    int i = this.pos;
    int j = this.limit;
    long l1 = 0L;
    int k = 0;
    int m = 1;
    int n = 0;
    int i1 = 0;
    int i2 = j;
    int i3 = i;
    char c;
    int i4;
    int i6;
    int i5;
    if (i3 + i1 == i2)
    {
      if (i1 == arrayOfChar.length)
        return 0;
      if (fillBuffer(i1 + 1))
      {
        i3 = this.pos;
        i2 = this.limit;
      }
    }
    else
    {
      c = arrayOfChar[(i3 + i1)];
      switch (c)
      {
      default:
        if ((c < '0') || (c > '9'))
        {
          if (!isLiteral(c))
            break label475;
          return 0;
        }
      case '-':
        if (n != 0)
          break;
        i4 = 1;
        int i7 = m;
        i6 = 1;
        i5 = i7;
      case '+':
      case 'E':
      case 'e':
      case '.':
      }
    }
    while (true)
    {
      i1++;
      k = i6;
      m = i5;
      n = i4;
      break;
      if (n == 5)
      {
        i4 = 6;
        i5 = m;
        i6 = k;
        continue;
      }
      return 0;
      if (n == 5)
      {
        i4 = 6;
        i5 = m;
        i6 = k;
        continue;
      }
      return 0;
      if ((n == 2) || (n == 4))
      {
        i4 = 5;
        i5 = m;
        i6 = k;
        continue;
      }
      return 0;
      if (n == 2)
      {
        i4 = 3;
        i5 = m;
        i6 = k;
        continue;
      }
      return 0;
      if ((n == 1) || (n == 0))
      {
        l1 = -(c - '0');
        i4 = 2;
        i5 = m;
        i6 = k;
        continue;
      }
      if (n == 2)
      {
        if (l1 == 0L)
          return 0;
        long l2 = 10L * l1 - (c - '0');
        if ((l1 > -922337203685477580L) || ((l1 == -922337203685477580L) && (l2 < l1)));
        for (int i8 = 1; ; i8 = 0)
        {
          int i9 = i8 & m;
          i6 = k;
          l1 = l2;
          int i10 = n;
          i5 = i9;
          i4 = i10;
          break;
        }
      }
      if (n == 3)
      {
        i4 = 4;
        i5 = m;
        i6 = k;
        continue;
      }
      if ((n == 5) || (n == 6))
      {
        i4 = 7;
        i5 = m;
        i6 = k;
        continue;
        label475: if ((n == 2) && (m != 0) && ((l1 != -9223372036854775808L) || (k != 0)))
        {
          if (k != 0);
          while (true)
          {
            this.peekedLong = l1;
            this.pos = (i1 + this.pos);
            this.peeked = 15;
            return 15;
            l1 = -l1;
          }
        }
        if ((n == 2) || (n == 4) || (n == 7))
        {
          this.peekedNumberLength = i1;
          this.peeked = 16;
          return 16;
        }
        return 0;
      }
      i4 = n;
      i5 = m;
      i6 = k;
    }
  }

  private void push(int paramInt)
  {
    if (this.stackSize == this.stack.length)
    {
      int[] arrayOfInt2 = new int[this.stackSize << 1];
      System.arraycopy(this.stack, 0, arrayOfInt2, 0, this.stackSize);
      this.stack = arrayOfInt2;
    }
    int[] arrayOfInt1 = this.stack;
    int i = this.stackSize;
    this.stackSize = (i + 1);
    arrayOfInt1[i] = paramInt;
  }

  private char readEscapeCharacter()
  {
    if ((this.pos == this.limit) && (!fillBuffer(1)))
      throw syntaxError("Unterminated escape sequence");
    char[] arrayOfChar = this.buffer;
    int i = this.pos;
    this.pos = (i + 1);
    int j = arrayOfChar[i];
    switch (j)
    {
    default:
      return j;
    case 117:
      if ((4 + this.pos > this.limit) && (!fillBuffer(4)))
        throw syntaxError("Unterminated escape sequence");
      int k = this.pos;
      int m = k + 4;
      int n = 0;
      int i1 = k;
      if (i1 < m)
      {
        int i2 = this.buffer[i1];
        int i3 = (char)(n << 4);
        if ((i2 >= 48) && (i2 <= 57))
          n = (char)(i3 + (i2 - 48));
        while (true)
        {
          i1++;
          break;
          if ((i2 >= 97) && (i2 <= 102))
          {
            n = (char)(i3 + (10 + (i2 - 97)));
            continue;
          }
          if ((i2 < 65) || (i2 > 70))
            break label282;
          n = (char)(i3 + (10 + (i2 - 65)));
        }
        throw new NumberFormatException("\\u" + new String(this.buffer, this.pos, 4));
      }
      this.pos = (4 + this.pos);
      return n;
    case 116:
      return '\t';
    case 98:
      return '\b';
    case 110:
      return '\n';
    case 114:
      return '\r';
    case 102:
      label282: return '\f';
    case 10:
    }
    this.lineNumber = (1 + this.lineNumber);
    this.lineStart = this.pos;
    return j;
  }

  private void skipQuotedValue(char paramChar)
  {
    char[] arrayOfChar = this.buffer;
    do
    {
      int i = this.pos;
      int j = this.limit;
      while (i < j)
      {
        int k = i + 1;
        char c = arrayOfChar[i];
        if (c == paramChar)
        {
          this.pos = k;
          return;
        }
        if (c == '\\')
        {
          this.pos = k;
          readEscapeCharacter();
          i = this.pos;
          j = this.limit;
          continue;
        }
        if (c == '\n')
        {
          this.lineNumber = (1 + this.lineNumber);
          this.lineStart = k;
        }
        i = k;
      }
      this.pos = i;
    }
    while (fillBuffer(1));
    throw syntaxError("Unterminated string");
  }

  private boolean skipTo(String paramString)
  {
    int j;
    while (true)
      if (this.pos + paramString.length() > this.limit)
      {
        boolean bool = fillBuffer(paramString.length());
        j = 0;
        if (!bool)
          break;
      }
      else
      {
        if (this.buffer[this.pos] == '\n')
        {
          this.lineNumber = (1 + this.lineNumber);
          this.lineStart = (1 + this.pos);
          this.pos = (1 + this.pos);
          continue;
        }
        for (int i = 0; ; i++)
        {
          if (i >= paramString.length())
            break label115;
          if (this.buffer[(i + this.pos)] != paramString.charAt(i))
            break;
        }
        label115: j = 1;
      }
    return j;
  }

  private void skipToEndOfLine()
  {
    while (true)
    {
      int j;
      if ((this.pos < this.limit) || (fillBuffer(1)))
      {
        char[] arrayOfChar = this.buffer;
        int i = this.pos;
        this.pos = (i + 1);
        j = arrayOfChar[i];
        if (j != 10)
          break label65;
        this.lineNumber = (1 + this.lineNumber);
        this.lineStart = this.pos;
      }
      label65: 
      do
        return;
      while (j == 13);
    }
  }

  private void skipUnquotedValue()
  {
    do
    {
      int i = 0;
      while (i + this.pos < this.limit)
        switch (this.buffer[(i + this.pos)])
        {
        default:
          i++;
          break;
        case '#':
        case '/':
        case ';':
        case '=':
        case '\\':
          checkLenient();
        case '\t':
        case '\n':
        case '\f':
        case '\r':
        case ' ':
        case ',':
        case ':':
        case '[':
        case ']':
        case '{':
        case '}':
          this.pos = (i + this.pos);
          return;
        }
      this.pos = (i + this.pos);
    }
    while (fillBuffer(1));
  }

  private IOException syntaxError(String paramString)
  {
    throw new MalformedJsonException(paramString + " at line " + getLineNumber() + " column " + getColumnNumber());
  }

  public void beginArray()
  {
    int i = this.peeked;
    if (i == 0)
      i = doPeek();
    if (i == 3)
    {
      push(1);
      this.peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }

  public void beginObject()
  {
    int i = this.peeked;
    if (i == 0)
      i = doPeek();
    if (i == 1)
    {
      push(3);
      this.peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }

  public void close()
  {
    this.peeked = 0;
    this.stack[0] = 8;
    this.stackSize = 1;
    this.in.close();
  }

  public void endArray()
  {
    int i = this.peeked;
    if (i == 0)
      i = doPeek();
    if (i == 4)
    {
      this.stackSize = (-1 + this.stackSize);
      this.peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected END_ARRAY but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }

  public void endObject()
  {
    int i = this.peeked;
    if (i == 0)
      i = doPeek();
    if (i == 2)
    {
      this.stackSize = (-1 + this.stackSize);
      this.peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected END_OBJECT but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }

  public boolean hasNext()
  {
    int i = this.peeked;
    if (i == 0)
      i = doPeek();
    return (i != 2) && (i != 4);
  }

  public final boolean isLenient()
  {
    return this.lenient;
  }

  public boolean nextBoolean()
  {
    int i = this.peeked;
    if (i == 0)
      i = doPeek();
    if (i == 5)
    {
      this.peeked = 0;
      return true;
    }
    if (i == 6)
    {
      this.peeked = 0;
      return false;
    }
    throw new IllegalStateException("Expected a boolean but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }

  public double nextDouble()
  {
    int i = this.peeked;
    if (i == 0)
      i = doPeek();
    if (i == 15)
    {
      this.peeked = 0;
      return this.peekedLong;
    }
    if (i == 16)
    {
      this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
      this.pos += this.peekedNumberLength;
    }
    double d;
    while (true)
    {
      this.peeked = 11;
      d = Double.parseDouble(this.peekedString);
      if ((this.lenient) || ((!Double.isNaN(d)) && (!Double.isInfinite(d))))
        break;
      throw new MalformedJsonException("JSON forbids NaN and infinities: " + d + " at line " + getLineNumber() + " column " + getColumnNumber());
      if ((i == 8) || (i == 9))
      {
        if (i == 8);
        for (char c = '\''; ; c = '"')
        {
          this.peekedString = nextQuotedValue(c);
          break;
        }
      }
      if (i == 10)
      {
        this.peekedString = nextUnquotedValue();
        continue;
      }
      if (i == 11)
        continue;
      throw new IllegalStateException("Expected a double but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    }
    this.peekedString = null;
    this.peeked = 0;
    return d;
  }

  public int nextInt()
  {
    int i = this.peeked;
    if (i == 0)
      i = doPeek();
    if (i == 15)
    {
      int m = (int)this.peekedLong;
      if (this.peekedLong != m)
        throw new NumberFormatException("Expected an int but was " + this.peekedLong + " at line " + getLineNumber() + " column " + getColumnNumber());
      this.peeked = 0;
      return m;
    }
    int j;
    if (i == 16)
    {
      this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
      this.pos += this.peekedNumberLength;
      this.peeked = 11;
      double d = Double.parseDouble(this.peekedString);
      j = (int)d;
      if (j != d)
        throw new NumberFormatException("Expected an int but was " + this.peekedString + " at line " + getLineNumber() + " column " + getColumnNumber());
    }
    else
    {
      if ((i == 8) || (i == 9))
      {
        if (i == 8);
        for (char c = '\''; ; c = '"')
        {
          this.peekedString = nextQuotedValue(c);
          try
          {
            int k = Integer.parseInt(this.peekedString);
            this.peeked = 0;
            return k;
          }
          catch (NumberFormatException localNumberFormatException)
          {
          }
          break;
        }
      }
      throw new IllegalStateException("Expected an int but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    }
    this.peekedString = null;
    this.peeked = 0;
    return j;
  }

  public long nextLong()
  {
    int i = this.peeked;
    if (i == 0)
      i = doPeek();
    if (i == 15)
    {
      this.peeked = 0;
      return this.peekedLong;
    }
    long l1;
    if (i == 16)
    {
      this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
      this.pos += this.peekedNumberLength;
      this.peeked = 11;
      double d = Double.parseDouble(this.peekedString);
      l1 = ()d;
      if (l1 != d)
        throw new NumberFormatException("Expected a long but was " + this.peekedString + " at line " + getLineNumber() + " column " + getColumnNumber());
    }
    else
    {
      if ((i == 8) || (i == 9))
      {
        if (i == 8);
        for (char c = '\''; ; c = '"')
        {
          this.peekedString = nextQuotedValue(c);
          try
          {
            long l2 = Long.parseLong(this.peekedString);
            this.peeked = 0;
            return l2;
          }
          catch (NumberFormatException localNumberFormatException)
          {
          }
          break;
        }
      }
      throw new IllegalStateException("Expected a long but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    }
    this.peekedString = null;
    this.peeked = 0;
    return l1;
  }

  public String nextName()
  {
    int i = this.peeked;
    if (i == 0)
      i = doPeek();
    String str;
    if (i == 14)
      str = nextUnquotedValue();
    while (true)
    {
      this.peeked = 0;
      return str;
      if (i == 12)
      {
        str = nextQuotedValue('\'');
        continue;
      }
      if (i != 13)
        break;
      str = nextQuotedValue('"');
    }
    throw new IllegalStateException("Expected a name but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }

  public void nextNull()
  {
    int i = this.peeked;
    if (i == 0)
      i = doPeek();
    if (i == 7)
    {
      this.peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected null but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }

  public String nextString()
  {
    int i = this.peeked;
    if (i == 0)
      i = doPeek();
    String str;
    if (i == 10)
      str = nextUnquotedValue();
    while (true)
    {
      this.peeked = 0;
      return str;
      if (i == 8)
      {
        str = nextQuotedValue('\'');
        continue;
      }
      if (i == 9)
      {
        str = nextQuotedValue('"');
        continue;
      }
      if (i == 11)
      {
        str = this.peekedString;
        this.peekedString = null;
        continue;
      }
      if (i == 15)
      {
        str = Long.toString(this.peekedLong);
        continue;
      }
      if (i != 16)
        break;
      str = new String(this.buffer, this.pos, this.peekedNumberLength);
      this.pos += this.peekedNumberLength;
    }
    throw new IllegalStateException("Expected a string but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }

  public JsonToken peek()
  {
    int i = this.peeked;
    if (i == 0)
      i = doPeek();
    switch (i)
    {
    default:
      throw new AssertionError();
    case 1:
      return JsonToken.BEGIN_OBJECT;
    case 2:
      return JsonToken.END_OBJECT;
    case 3:
      return JsonToken.BEGIN_ARRAY;
    case 4:
      return JsonToken.END_ARRAY;
    case 12:
    case 13:
    case 14:
      return JsonToken.NAME;
    case 5:
    case 6:
      return JsonToken.BOOLEAN;
    case 7:
      return JsonToken.NULL;
    case 8:
    case 9:
    case 10:
    case 11:
      return JsonToken.STRING;
    case 15:
    case 16:
      return JsonToken.NUMBER;
    case 17:
    }
    return JsonToken.END_DOCUMENT;
  }

  public final void setLenient(boolean paramBoolean)
  {
    this.lenient = paramBoolean;
  }

  public void skipValue()
  {
    int i = 0;
    int j = this.peeked;
    if (j == 0)
      j = doPeek();
    if (j == 3)
    {
      push(1);
      i++;
    }
    while (true)
    {
      this.peeked = 0;
      if (i != 0)
        break;
      return;
      if (j == 1)
      {
        push(3);
        i++;
        continue;
      }
      if (j == 4)
      {
        this.stackSize = (-1 + this.stackSize);
        i--;
        continue;
      }
      if (j == 2)
      {
        this.stackSize = (-1 + this.stackSize);
        i--;
        continue;
      }
      if ((j == 14) || (j == 10))
      {
        skipUnquotedValue();
        continue;
      }
      if ((j == 8) || (j == 12))
      {
        skipQuotedValue('\'');
        continue;
      }
      if ((j == 9) || (j == 13))
      {
        skipQuotedValue('"');
        continue;
      }
      if (j != 16)
        continue;
      this.pos += this.peekedNumberLength;
    }
  }

  public String toString()
  {
    return getClass().getSimpleName() + " at line " + getLineNumber() + " column " + getColumnNumber();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.stream.JsonReader
 * JD-Core Version:    0.6.0
 */