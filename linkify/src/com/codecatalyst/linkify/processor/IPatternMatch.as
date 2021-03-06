////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2010 CodeCatalyst, LLC - http://www.codecatalyst.com/
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.	
////////////////////////////////////////////////////////////////////////////////

package com.codecatalyst.linkify.processor
{
	/**
	 * IPatternMatch
	 * 
	 * @author John Yanarella
	 */
	public interface IPatternMatch
	{
		/**
		 * The matched substring.
		 */
		function get matchedText():String;

		/**
		 * The original text.
		 */
		function get originalText():String;
		
		/**
		 * The starting index of the matched substring relative to the original string.
		 */
		function get startIndex():int;
		
		/**
		 * The ending index of the matched substring relative to the original string.
		 */
		function get endIndex():int;

		[ArrayElementType("String")]
		/**
		 * Any captured parenthetical group matches.
		 */
		function get capturedGroups():Array;
		
		/**
		 * The portion of the string that precedes the matched substring.
		 */
		function get leftText():String;
		
		/**
		 * The portion of the string that follows the matched substring.
		 */
		function get rightText():String;
	}
}